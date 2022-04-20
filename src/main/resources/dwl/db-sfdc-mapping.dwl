%dw 2.0
output application/json
---
{
	"customerRequest" : ( payload map((item,index)->{
		"customerId" : item.customerId,
		"customerName" : item.customerName,
		"email" : item.email,
		"phone" : item.phone as String,
		"address" : item.address,
		"dob" : item.dob,
		"gender" : item.gender,
		"status" : "true",
		"registrationDateTime": item.registrationDateTime,
		"lastModifiedDateTime": item.lastModifiedDateTime,
		 "sfdcId" : item.sfdcId
	}))
}

