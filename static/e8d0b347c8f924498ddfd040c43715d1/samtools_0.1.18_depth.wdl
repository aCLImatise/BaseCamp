version 1.0

task Samtools0118Depth {
  input {
    String? b
    String? var_1
    String? var_2
    String? r
    Int bam_two_depth
    Int in_one_dot_bam
  }
  command <<<
    samtools_0_1_18 depth \
      ~{bam_two_depth} \
      ~{in_one_dot_bam} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(var_1) then ("-Q " +  '"' + var_1 + '"') else ""} \
      ~{if defined(var_2) then ("-q " +  '"' + var_2 + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    b: ""
    var_1: ""
    var_2: ""
    r: ""
    bam_two_depth: ""
    in_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}