version 1.0

task Summarizesketch.sh {
  input {
    String in
  }
  command <<<
    summarizesketch.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}