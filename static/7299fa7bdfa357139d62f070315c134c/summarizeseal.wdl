version 1.0

task Summarizeseal.sh {
  input {
    String in
  }
  command <<<
    summarizeseal.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}