namespace Contoso.Rewards;

using Microsoft.Sales.Customer;

tableextension 50150 "customer table ext" extends Customer
{
    fields
    {
        field(50100; "Reward ID"; Code[30])
        {
            DataClassification = CustomerContent;

            // set links to the "Reward ID" from the reward table. 
            TableRelation = reward."Reward ID";

            //set whether to validate a table relationship
            ValidateTableRelation = true;

            //Onvalidate trigger executes when data is entered in a field.
            trigger OnValidate()
            begin
                if (rec."Reward ID" <> xRec."Reward ID") and
                  (Rec.Blocked <> Blocked::" ") then begin
                    Error(
                        'Cannot update the rewards status of a blocked customer'
                    );
                end;
            end;
        }
    }
}