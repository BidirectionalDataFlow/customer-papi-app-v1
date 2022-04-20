%dw 2.0
output application/json indent=true
---
{
	"failed_Records": (payload.customerResponse filter $.status == false ).customerId
}