version 1.0

task CompareIntervalsExactpl {
  command <<<
    compare_intervals_exact_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/braker2:2.1.6--hdfd78af_1"
  }
  output {
    File out_stdout = stdout()
  }
}