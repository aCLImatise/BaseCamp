version 1.0

task CalculateCoverage.pyInputFastx {
  input {
    String? f
    String? s
    String calculate_coverage_do_tpy
  }
  command <<<
    calculate_coverage.py input_fastx \
      ~{calculate_coverage_do_tpy} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    s: ""
    calculate_coverage_do_tpy: ""
  }
}