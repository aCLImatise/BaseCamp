version 1.0

task Rqcfilter.sh {
  input {
    String rqc_filter_two_dots_h
    String in
  }
  command <<<
    rqcfilter.sh \
      ~{rqc_filter_two_dots_h} \
      ~{in}
  >>>
  parameter_meta {
    rqc_filter_two_dots_h: ""
    in: ""
  }
}