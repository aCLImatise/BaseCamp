version 1.0

task InsertedSequencesToFasta {
  input {
    Boolean? std_help
  }
  command <<<
    InsertedSequencesToFasta \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gridss:2.10.2--0"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
  }
  output {
    File out_stdout = stdout()
  }
}