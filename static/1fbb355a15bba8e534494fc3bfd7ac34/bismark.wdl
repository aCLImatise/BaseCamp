version 1.0

task Bismark {
  input {
    Boolean solexaSolexaQuals
    String? defaultDefault
  }
  command <<<
    bismark \
      ~{defaultDefault} \
      ~{true="--solexa-quals" false="" solexaSolexaQuals}
  >>>
}