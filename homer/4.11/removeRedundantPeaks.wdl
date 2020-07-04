version 1.0

task RemoveRedundantPeaks.pl {
  input {
    String peak_file
  }
  command <<<
    removeRedundantPeaks.pl \
      ~{peak_file}
  >>>
  parameter_meta {
    peak_file: ""
  }
}