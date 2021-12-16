pageextension 50001 CBR_ExtendItemList extends "Item List"
{
    layout
    {
        addafter("Unit Price")
        {
            field(Ti; Rec.Ti)
            {
                ApplicationArea = All;
            }
            field(Hi; Rec.Hi)
            {
                ApplicationArea = All;
            }
            field("Pallet Size"; Rec."Pallet Size")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;

    trigger OnAfterGetRecord()
    var
    begin
        Rec.CalculatePalletSize()
    end;
}