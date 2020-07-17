version 1.0

task QmerFilter {
  input {
    String threshold
    String in
    String out
  }
  command <<<
    qmer-filter \
      ~{threshold} \
      ~{in} \
      ~{out}
  >>>
  parameter_meta {
    threshold: ""
    in: ""
    out: ""
  }
}