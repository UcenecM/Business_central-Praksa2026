page 50141 "Lot Avail. Bin"
{
    PageType = List;
    SourceTable = "Warehouse Entry";
    SourceTableTemporary = true;
    UsageCategory = Lists;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = Basic;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = Basic;
                }
                field("Bin Code"; Rec."Bin Code")
                {
                    ApplicationArea = Basic;
                }
                field("Serial No."; Rec."Serial No.")
                {
                    ApplicationArea = Basic;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = Basic;
                }
            }
        }
    }
    trigger OnOpenPage()
    var

        LotAvail: Query "Lot Avail. by Bin";

    begin
        LotAvail.Open;
        while LotAvail.Read do begin
            // Init;
            // "Item No." := LotAvail.Item_No_;
            // "Location Code" := LotAvail.Location_Code;    Ne Dela, ter nimam pojma
            // "Bin Code" := LotAvail.Sum_Quantity;
            // Insert;
        end;
    end;
}