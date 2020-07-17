version 1.0

task Xpclr {
  input {
    String? out
    String? format
    String? var_input
  }
  command <<<
    xpclr \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""}
  >>>
  parameter_meta {
    out: ""
    format: ""
    var_input: ""
  }
}