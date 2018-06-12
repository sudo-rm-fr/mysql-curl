SELECT firstname AS first_name, last_name AS last_name,  opportunity.name AS comments, address_city AS city, address_state, address_country, address_postal_code AS postcode, address_street AS address1, phone_number.name AS phone_number  FROM opportunity
 JOIN contact_opportunity
     ON contact_opportunity.opportunity_id=opportunity.id
 JOIN entity_phone_number
     ON entity_phone_number.entity_id=contact_opportunity.contact_id
 JOIN phone_number
     ON phone_number.id=entity_phone_number.phone_number_id
 JOIN entity_email_address
     ON entity_email_address.entity_id=contact_opportunity.contact_id
 JOIN email_address
     ON email_address.id=entity_email_address.email_address_id
WHERE clawback_date between CURDATE() - 14  AND CURDATE() + 0 AND opportunity.deleted = 0 AND stage="Clawed Back"

