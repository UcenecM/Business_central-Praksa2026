page 50111 "Radio Show Fans"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = Basic;
    SourceTable = "Radio Show Fan";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Name; Rec.Name) { ApplicationArea = Basic; }
                field("E-Mail"; Rec."E-Mail") { ApplicationArea = Basic; }
                field("Last Contacted"; Rec."Last Contacted") { ApplicationArea = Basic; }
                field(Address; Rec.Address) { ApplicationArea = Basic; }
                field("Post Code"; Rec."Post Code") { ApplicationArea = Basic; }
                field(City; Rec.City) { ApplicationArea = Basic; }
                field("Country/Region Code"; Rec."Country/Regieon Code") { ApplicationArea = Basic; }
                field(Gender; Rec.Gender) { ApplicationArea = Basic; }
                field("Birth Date"; Rec."Birth Date") { ApplicationArea = Basic; }
            }
        }
    }
}