version 1.0

task CombinedAvg.pl {
  input {
    String freq_file
  }
  command <<<
    combinedAvg.pl \
      ~{freq_file}
  >>>
  parameter_meta {
    freq_file: ""
  }
}