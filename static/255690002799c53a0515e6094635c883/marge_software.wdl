version 1.0

task MargeSoftware {
  input {
    String marge
    String is
    String a
    String free
    String software
    String to
    String predict
    String key
    String regulated
    String genes
    String and
    String cis_regulatory
    String regions
    String in
    String human
    String or
    String mouse_dot
  }
  command <<<
    marge software \
      ~{marge} \
      ~{is} \
      ~{a} \
      ~{free} \
      ~{software} \
      ~{to} \
      ~{predict} \
      ~{key} \
      ~{regulated} \
      ~{genes} \
      ~{and} \
      ~{cis_regulatory} \
      ~{regions} \
      ~{in} \
      ~{human} \
      ~{or} \
      ~{mouse_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    marge: ""
    is: ""
    a: ""
    free: ""
    software: ""
    to: ""
    predict: ""
    key: ""
    regulated: ""
    genes: ""
    and: ""
    cis_regulatory: ""
    regions: ""
    in: ""
    human: ""
    or: ""
    mouse_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}