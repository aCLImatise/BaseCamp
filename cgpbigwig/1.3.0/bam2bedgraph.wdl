version 1.0

task Bam2bedgraph {
  input {
    String? i
    File? o
    String? r
    Boolean? v
    String? cr_vertical_line_b
    String am
  }
  command <<<
    bam2bedgraph \
      ~{cr_vertical_line_b} \
      ~{am} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    i: ""
    o: ""
    r: ""
    v: ""
    cr_vertical_line_b: ""
    am: ""
  }
}