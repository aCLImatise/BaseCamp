version 1.0

task BealignINPUT {
  input {
    String? a
    String? e
    String? r
    String be_align
  }
  command <<<
    bealign INPUT \
      ~{be_align} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
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