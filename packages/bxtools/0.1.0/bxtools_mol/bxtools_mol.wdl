version 1.0

task BxtoolsMol {
  input {
    Boolean? verbose
    String bam_slash_sam_slash_cram
  }
  command <<<
    bxtools mol \
      ~{bam_slash_sam_slash_cram} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "Set verbose output"
    bam_slash_sam_slash_cram: ""
  }
  output {
    File out_stdout = stdout()
  }
}