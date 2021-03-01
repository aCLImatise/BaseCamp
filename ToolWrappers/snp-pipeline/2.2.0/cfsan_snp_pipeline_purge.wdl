version 1.0

task CfsanSnpPipelinePurge {
  input {
    Int? verbose
    String work_dir
  }
  command <<<
    cfsan_snp_pipeline purge \
      ~{work_dir} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    work_dir: "Path to the working directory containing the \\\"samples\\\"\\ndirectory to be recursively deleted"
  }
  output {
    File out_stdout = stdout()
  }
}