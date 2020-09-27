version 1.0

task MykrobePanels {
  input {
    Boolean? quiet
  }
  command <<<
    mykrobe panels \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    quiet: "do not output warnings to stderr"
  }
  output {
    File out_stdout = stdout()
  }
}