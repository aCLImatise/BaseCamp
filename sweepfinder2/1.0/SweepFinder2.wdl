version 1.0

task SweepFinder2 {
  input {
    String to
    String get
    String frequency
    String spectrum
  }
  command <<<
    SweepFinder2 \
      ~{to} \
      ~{get} \
      ~{frequency} \
      ~{spectrum}
  >>>
  parameter_meta {
    to: ""
    get: ""
    frequency: ""
    spectrum: ""
  }
}