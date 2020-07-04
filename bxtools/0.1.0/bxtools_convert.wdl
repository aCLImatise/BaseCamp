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
      ~{true="--verbose" false="" verbose} \
      ~{true="--keep-tags" false="" keep_tags} \
      ~{true="--tag" false="" tag}
  >>>
  parameter_meta {
    verbose: "Set verbose output"
    keep_tags: "Add chromosome tag (CR) and keep other tags. Default: delete all tags"
    tag: "Tag to flip for chromosome. Default: BX"
    bam_slash_sam_slash_cram: ""
  }
}