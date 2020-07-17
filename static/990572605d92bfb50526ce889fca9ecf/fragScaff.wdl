version 1.0

task FragScaff.sh {
  input {
    String? t
    String? p
    String? a
    Int? c
    String? b
  }
  command <<<
    fragScaff.sh \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    p: ""
    a: ""
    c: ""
    b: ""
  }
}