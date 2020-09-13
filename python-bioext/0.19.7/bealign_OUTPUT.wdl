version 1.0

task BealignOUTPUT {
  input {
    String? a
    String? e
    String? r
    String be_align
  }
  command <<<
    bealign OUTPUT \
      ~{be_align} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    e: ""
    r: ""
    be_align: ""
  }
  output {
    File out_stdout = stdout()
  }
}