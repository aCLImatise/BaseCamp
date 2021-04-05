version 1.0

task InStrainOther {
  input {
    Int? processes
    Boolean? debug
    String? old_is
    String? run_statistics
  }
  command <<<
    inStrain other \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(old_is) then ("--old_IS " +  '"' + old_is + '"') else ""} \
      ~{if defined(run_statistics) then ("--run_statistics " +  '"' + run_statistics + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/instrain:1.5.3--py_0"
  }
  parameter_meta {
    processes: "Number of processes to use (default: 6)"
    debug: "Make extra debugging output (default: False)"
    old_is: "Convert an old inStrain version object to the newer\\nversion. (default: None)"
    run_statistics: "Generate runtime reports for an inStrain run.\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}