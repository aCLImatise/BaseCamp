version 1.0

task BxtoolsConvert {
  input {
    Boolean? verbose
    Boolean? keep_tags
    Boolean? tag
    String bam_slash_sam_slash_cram
  }
  command <<<
    bxtools convert \
      ~{bam_slash_sam_slash_cram} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (keep_tags) then "--keep-tags" else ""} \
      ~{if (tag) then "--tag" else ""}
  >>>
  parameter_meta {
    verbose: "Set verbose output"
    keep_tags: "Add chromosome tag (CR) and keep other tags. Default: delete all tags"
    tag: "Tag to flip for chromosome. Default: BX"
    bam_slash_sam_slash_cram: ""
  }
  output {
    File out_stdout = stdout()
  }
}