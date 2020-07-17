version 1.0

task ComparePolishes {
  input {
    String? i
    String? c
    String? a
    String? b
    String? p
    Boolean? gff_three
  }
  command <<<
    comparePolishes \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{true="-gff3" false="" gff_three}
  >>>
  parameter_meta {
    i: ""
    c: ""
    a: ""
    b: ""
    p: ""
    gff_three: ""
  }
}