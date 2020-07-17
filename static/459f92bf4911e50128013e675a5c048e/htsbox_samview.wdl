version 1.0

task HtsboxSamview {
  input {
    Boolean? bs_ipo
    String? var_1
    String? var_2
    String? e
    String sam_view
    String in_dot_bam
  }
  command <<<
    htsbox samview \
      ~{sam_view} \
      ~{in_dot_bam} \
      ~{true="-bSIpO" false="" bs_ipo} \
      ~{if defined(var_1) then ("-L " +  '"' + var_1 + '"') else ""} \
      ~{if defined(var_2) then ("-l " +  '"' + var_2 + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""}
  >>>
  parameter_meta {
    bs_ipo: ""
    var_1: ""
    var_2: ""
    e: ""
    sam_view: ""
    in_dot_bam: ""
  }
}