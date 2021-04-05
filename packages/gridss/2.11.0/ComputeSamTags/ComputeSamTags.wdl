version 1.0

task ComputeSamTags {
  input {
    Boolean? std_help
    String substituted_dot
    String list_dot
  }
  command <<<
    ComputeSamTags \
      ~{substituted_dot} \
      ~{list_dot} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gridss:2.11.0--hdfd78af_1"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    substituted_dot: "Default value: true. This option can be set to 'null' to clear the default"
    list_dot: "WORKER_THREADS=Integer"
  }
  output {
    File out_stdout = stdout()
  }
}