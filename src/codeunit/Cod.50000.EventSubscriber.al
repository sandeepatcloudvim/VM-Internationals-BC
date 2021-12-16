codeunit 50000 ExtendEvents
{
    trigger OnRun()
    begin

    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, 'OnAfterSubstituteReport', '', false, false)]
    local procedure OnSubstituteReport(ReportId: Integer; var NewReportId: Integer)
    begin
        if ReportId = Report::"Aged Accounts Receivable NA" then
            NewReportId := Report::"CBR Aged Accounts Receivable";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, 'OnAfterSubstituteReport', '', false, false)]
    local procedure OnSubstituteReport1(ReportId: Integer; var NewReportId: Integer)
    begin
        if ReportId = Report::"Aged Accounts Payable NA" then
            NewReportId := Report::"CBR Aged Accounts Payable";
    end;

}