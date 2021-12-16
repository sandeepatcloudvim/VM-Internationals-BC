tableextension 50000 CBR_ExtendItem extends Item
{
    fields
    {
        field(50000; Ti; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Ti';
            trigger OnValidate()
            begin
                if Hi <> 0 then
                    "Pallet Size" := Ti * Hi;
            end;
        }
        field(50001; Hi; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Hi';
            trigger OnValidate()
            begin
                "Pallet Size" := Ti * Hi;
            end;
        }
        field(50002; "Pallet Size"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Pallet Size';
            Editable = false;

        }
    }

    var
        myInt: Integer;

    procedure CalculatePalletSize()
    var
    begin
        if "Pallet Size" = 0 then
            "Pallet Size" := Ti * Hi;
    end;
}