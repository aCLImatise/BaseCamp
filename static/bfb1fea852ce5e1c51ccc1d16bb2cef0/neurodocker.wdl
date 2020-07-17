version 1.0

task Neurodocker {
  input {
    String? var_0
    Boolean? var_1
  }
  command <<<
    neurodocker \
      ~{if defined(var_0) then ("-v " +  '"' + var_0 + '"') else ""} \
      ~{true="-V" false="" var_1}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
  }
}