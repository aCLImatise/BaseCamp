version 1.0

task BatchAnnotatePeaksHistogram.pl {
  input {
    String usage
  }
  command <<<
    batchAnnotatePeaksHistogram.pl \
      ~{usage}
  >>>
  parameter_meta {
    usage: ""
  }
}