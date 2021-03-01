version 1.0

task Locarnaprevcomppl {
  input {
    Boolean? man
  }
  command <<<
    locarnap_revcomp_pl \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "Full documentation"
  }
  output {
    File out_stdout = stdout()
  }
}