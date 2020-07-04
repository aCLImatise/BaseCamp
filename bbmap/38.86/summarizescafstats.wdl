version 1.0

task Summarizescafstats.sh {
  input {
    String in
  }
  command <<<
    summarizescafstats.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}