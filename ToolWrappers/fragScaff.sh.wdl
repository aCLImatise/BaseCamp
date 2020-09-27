version 1.0

task FragScaffsh {
  input {
    File? b
    Int? c
    String? a
    String? p
    Int? t
  }
  command <<<
    fragScaff_sh \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    c: ""
    a: ""
    p: ""
    t: ""
  }
  output {
    File out_stdout = stdout()
  }
}