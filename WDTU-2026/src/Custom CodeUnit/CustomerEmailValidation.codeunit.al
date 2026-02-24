codeunit 50110 "Customer Mail Validation"
{
    procedure ValidateEmail(Customer: Record Customer)
    var
        EmailRegEx: Label '^[a-zA-Z0-9._%+-]@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    begin
        if Customer."E-Mail" = ' ' then
            Error('Email je potreben');

        if not Customer."E-Mail".Contains(EmailRegEx) then
            Error('Napačen email naslov');


        Message('Email je ok');
    end;
}