version 1.0

task Bam2fnaOUTPUT {
  input {
    String bam_two_fna
    String var_input
    String var_output
  }
  command <<<
    bam2fna OUTPUT \
      ~{bam_two_fna} \
      ~{var_input} \
      ~{var_output}
  >>>
  parameter_meta {
    bam_two_fna: ""
    var_input: ""
    var_output: ""
  }
}