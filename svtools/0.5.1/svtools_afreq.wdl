version 1.0

task SvtoolsAfreq {
  input {
    Boolean? support
    String var_1
    String var_2
  }
  command <<<
    svtools afreq \
      ~{var_1} \
      ~{var_2} \
      ~{true="--support" false="" support}
  >>>
  parameter_meta {
    support: ""
    var_1: ""
    var_2: ""
  }
}