version 1.0

task DriveIssue {
  input {
    Boolean pipedPiped
    String titleTitle
  }
  command <<<
    drive issue \
      ~{true="-piped" false="" pipedPiped} \
      ~{if defined(titleTitle) then ("-title " +  '"' + titleTitle + '"') else ""}
  >>>
}