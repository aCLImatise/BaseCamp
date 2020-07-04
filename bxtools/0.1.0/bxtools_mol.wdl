version 1.0

task BxtoolsMol {
  input {
    Boolean? verbose
    String bam_slash_sam_slash_cram
  }
  command <<<
    bxtools mol \
      ~{bam_slash_sam_slash_cram} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "Set verbose output"
    bam_slash_sam_slash_cram: ""
  }
}