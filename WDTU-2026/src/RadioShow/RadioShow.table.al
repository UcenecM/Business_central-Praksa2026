table 50100 "Radio Show"
{


    fields
    {
        field(1; "No."; Code[20])
        {


        }
        field(10; "Radio Show Type"; Code[20])
        {
            TableRelation = "Radio Show Type";
        }
        field(20; "Name"; Text[20])
        {

        }
        field(40; "Run Time"; Duration)
        {

        }
        field(50; "Host Code"; Code[20])
        {

        }
        field(60; "Host Name"; Text[20])
        {

        }
        field(100; "Average Listeners"; Decimal)
        {
            // Editable = false;
            // FieldClass = FlowField;
            // CalcFormula = average("Listernership Entry"."Listeners Count"
            // where("Radio Show No." = field("No."), Date = field("Date Filter")));
        }
        field(110; "Audience Share"; Decimal)
        {
            // Editable = false;
            // FieldClass = FlowField;
            // CalcFormula = average("Listernership Entry"."Audience Share"
            // where("Radio Show No." = field("No."), Date = field("Date Filter")));
        }
        field(120; "Advertising Revenue"; Decimal)
        {
            // Editable = FALSE;
            // FieldClass = FlowField;
            // CalcFormula = sum("Radio Show Entry"."Fee Amount"
            // where(
            //     "Radio Show No." = field("No."),
            //     "Data Format" = filter(Advertisment)
            // ));
        }
        field(130; "Royalty Cost"; Decimal)
        {

        }
        field(1000; "Frequency"; Option)
        {
            OptionMembers = Hourly,Daily,Weekly,Monthly;
        }
        field(1010; "PSA Planned Quantitiy"; Integer)
        {

        }
        field(1020; "Ads Planned Quantity"; Integer)
        {

        }
        field(1030; "News Required"; Boolean)
        {
            InitValue = true;
        }
        field(1040; "News Duration"; Duration)
        {

        }
        field(1050; "Sports Required"; Boolean)
        {
            InitValue = true;
        }
        field(1060; "Sports Duratiom"; Duration)
        {

        }
        field(1070; "Weather Requied"; Boolean)
        {
            InitValue = true;
        }
        field(1080; "Weather Duration"; Duration)
        {

        }
        field(1090; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
