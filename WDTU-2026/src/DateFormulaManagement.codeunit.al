codeunit 50141 "Date Formula Management"
{
    procedure CalculateNewDate(DateFormulaToTest: DateFormula; RefefenceForDateCalc: Date): Date
    var
        DateFormMgt: Codeunit "Date Formula Management";
    begin
        exit(CalcDate(DateFormulaToTest, RefefenceForDateCalc));
    end;
}