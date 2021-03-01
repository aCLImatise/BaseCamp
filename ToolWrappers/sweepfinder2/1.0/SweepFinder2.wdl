version 1.0

task SweepFinder2 {
  input {
    String to
    String find
    String get
    String frequency
    String sweeps
    String spectrum
  }
  command <<<
    SweepFinder2 \
      ~{to} \
      ~{find} \
      ~{get} \
      ~{frequency} \
      ~{sweeps} \
      ~{spectrum}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    to: ""
    find: ""
    get: ""
    frequency: ""
    sweeps: ""
    spectrum: ""
  }
  output {
    File out_stdout = stdout()
  }
}