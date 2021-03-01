version 1.0

task Obipr2 {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    Directory? local_db
    Boolean? _mintaxidminimal_taxid
  }
  command <<<
    obipr2 \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if (without_progress_bar) then "--without-progress-bar" else ""} \
      ~{if defined(local_db) then ("--localdb " +  '"' + local_db + '"') else ""} \
      ~{if (_mintaxidminimal_taxid) then "-m" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    local_db: "Local copy of the files located in the specified\\ndirectory will be used instead of those present on the\\nPR2 web site"
    _mintaxidminimal_taxid: "####, --min-taxid=####\\nminimal taxid for the species taxid\\n"
  }
  output {
    File out_stdout = stdout()
  }
}