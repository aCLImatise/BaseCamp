version 1.0

task ComparePolishes {
  input {
    Boolean? gff_three
    String? p
    String? b
    String? a
    String? c
    String? i
  }
  command <<<
    comparePolishes \
      ~{if (gff_three) then "-gff3" else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    gff_three: ""
    p: ""
    b: ""
    a: ""
    c: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}