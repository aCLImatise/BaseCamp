version 1.0

task MargeIs {
  input {
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
    marge is \
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
  parameter_meta {
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