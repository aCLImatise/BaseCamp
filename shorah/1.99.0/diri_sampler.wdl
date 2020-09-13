version 1.0

task DiriSampler {
  input {
    String? a
    Int? var_1
    Int? var_2
    String? t
    String? r
    String files
    String parameters
  }
  command <<<
    diri_sampler \
      ~{files} \
      ~{parameters} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(var_1) then ("-K " +  '"' + var_1 + '"') else ""} \
      ~{if defined(var_2) then ("-k " +  '"' + var_2 + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(r) then ("-R " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    var_1: "not compat. with -k"
    var_2: "not compat. with -K"
    t: ""
    r: ""
    files: "-i <input data file>"
    parameters: "-j <sampling iterations>"
  }
  output {
    File out_stdout = stdout()
  }
}