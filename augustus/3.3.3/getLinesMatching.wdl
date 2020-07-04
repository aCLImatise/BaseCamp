version 1.0

task GetLinesMatching.pl {
  input {
    Boolean? whitespace
    String cat
    String var_input
  }
  command <<<
    getLinesMatching.pl \
      ~{cat} \
      ~{var_input} \
      ~{true="--whitespace" false="" whitespace}
  >>>
  parameter_meta {
    whitespace: "Split columns at whitespace rather than tab."
    cat: ""
    var_input: ""
  }
}