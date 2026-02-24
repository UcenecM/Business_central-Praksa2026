table 50110 "Radio Show Fan"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {

        }
        field(10; "Radio Show No."; Code[20])
        {

        }
        field(20; Name; Text[50])
        {

        }
        field(30; "E-Mail"; Text[250])
        {
            Caption = 'Email';
            ExtendedDatatype = EMail;
        }
        field(40; "Last Contacted"; Date)
        {

        }
        field(60; Address; Text[50])
        {

        }
        field(70; "Address 2"; Text[50])
        {

        }
        field(80; City; Text[50])
        {

        }
        field(90; "Country/Regieon Code"; Code[10])
        {

        }
        field(95; Country; Text[30])
        {

        }
        field(100; "Post Code"; Code[20])
        {
            trigger OnValidate()
            var
                PosteCode: Record "Post Code";
            begin
                PosteCode.ValidatePostCode(City, "Post Code", Country, "Country/Regieon Code",
                    (CurrFieldNo <> 0) AND GuiAllowed);
            end;
        }
        field(110; Gender; Option)
        {
            OptionMembers = Male,Female;
        }
        field(120; "Birth Date"; Date)
        {

        }
    }
}