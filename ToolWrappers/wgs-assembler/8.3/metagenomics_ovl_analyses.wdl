version 1.0

task MetagenomicsOvlAnalyses {
  input {
    String? var_0
    String? o
    String? g
    Boolean? d
    String? e
    String? var_5
    File? var_6
    File? c
    File? var_8
    File? a
  }
  command <<<
    metagenomics_ovl_analyses \
      ~{if defined(var_0) then ("-s " +  '"' + var_0 + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(var_5) then ("-b " +  '"' + var_5 + '"') else ""} \
      ~{if defined(var_6) then ("-S " +  '"' + var_6 + '"') else ""} \
      ~{if defined(c) then ("-C " +  '"' + c + '"') else ""} \
      ~{if defined(var_8) then ("-B " +  '"' + var_8 + '"') else ""} \
      ~{if defined(a) then ("-A " +  '"' + a + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    o: ""
    g: ""
    d: ""
    e: ""
    var_5: ""
    var_6: ""
    c: ""
    var_8: ""
    a: ""
  }
  output {
    File out_stdout = stdout()
  }
}