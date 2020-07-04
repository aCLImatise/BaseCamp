version 1.0

task Bam2msaOUTPUT {
  input {
    String? r
    String bam_two_msa
    String var_input
    String var_output
  }
  command <<<
    bam2msa OUTPUT \
      ~{bam_two_msa} \
      ~{var_input} \
      ~{var_output} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    r: ""
    bam_two_msa: ""
    var_input: ""
    var_output: ""
  }
}