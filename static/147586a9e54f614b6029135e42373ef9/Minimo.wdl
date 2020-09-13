version 1.0

task Minimo {
  input {
    String? d
    Float v_one_dot_eight
    String copyright
    String florent
    String an_gly
    Int two_zero_one_zero_dot
    String under
    String the
    String gpl
    Int v_three
    String open_source
  }
  command <<<
    Minimo \
      ~{v_one_dot_eight} \
      ~{copyright} \
      ~{florent} \
      ~{an_gly} \
      ~{two_zero_one_zero_dot} \
      ~{under} \
      ~{the} \
      ~{gpl} \
      ~{v_three} \
      ~{open_source} \
      ~{if defined(d) then ("-D " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    v_one_dot_eight: ""
    copyright: ""
    florent: ""
    an_gly: ""
    two_zero_one_zero_dot: ""
    under: ""
    the: ""
    gpl: ""
    v_three: ""
    open_source: ""
  }
  output {
    File out_stdout = stdout()
  }
}