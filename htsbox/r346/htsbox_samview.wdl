version 1.0

task HtsboxSamview {
  input {
    String? e
    String? var_1
    String? var_2
    Boolean? bs_ipo
    String sam_view
    String in_dot_bam
  }
  command <<<
    htsbox samview \
      ~{sam_view} \
      ~{in_dot_bam} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(var_1) then ("-l " +  '"' + var_1 + '"') else ""} \
      ~{if defined(var_2) then ("-L " +  '"' + var_2 + '"') else ""} \
      ~{if (bs_ipo) then "-bSIpO" else ""}
  >>>
  parameter_meta {
    e: ""
    var_1: ""
    var_2: ""
    bs_ipo: ""
    sam_view: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}