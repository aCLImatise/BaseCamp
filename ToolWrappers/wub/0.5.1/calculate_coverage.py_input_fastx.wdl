version 1.0

task CalculateCoveragepyInputFastx {
  input {
    Int? s
    String? f
    String calculate_coverage_do_tpy
  }
  command <<<
    calculate_coverage_py input_fastx \
      ~{calculate_coverage_do_tpy} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    s: ""
    f: ""
    calculate_coverage_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}