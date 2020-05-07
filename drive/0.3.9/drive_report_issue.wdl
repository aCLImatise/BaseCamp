version 1.0

task DriveReportIssue {
  input {
    Boolean pipedPiped
    String titleTitle
  }
  command <<<
    drive report-issue \
      ~{true="-piped" false="" pipedPiped} \
      ~{if defined(titleTitle) then ("-title " +  '"' + titleTitle + '"') else ""}
  >>>
}