version 1.0

task Vcfaddinfo {
  input {
    String var_0
    String var_1
  }
  command <<<
    vcfaddinfo \
      ~{var_0} \
      ~{var_1}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
  }
}