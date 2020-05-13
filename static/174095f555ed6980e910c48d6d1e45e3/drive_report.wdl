version 1.0

task DriveReport {
  input {
    Boolean pipedPiped
    String titleTitle
  }
  command <<<
    drive report \
      ~{true="-piped" false="" pipedPiped} \
      ~{if defined(titleTitle) then ("-title " +  '"' + titleTitle + '"') else ""}
  >>>
}