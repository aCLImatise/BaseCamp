version 1.0

task BealignINPUT {
  input {
    String? r
    String? e
    String? a
    String be_align
  }
  command <<<
    bealign INPUT \
      ~{be_align} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  parameter_meta {
    r: ""
    e: ""
    a: ""
    be_align: ""
  }
}