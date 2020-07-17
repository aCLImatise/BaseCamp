version 1.0

task ExtractVariants {
  input {
    Boolean? skip_header
    Boolean? invert
  }
  command <<<
    extract_variants \
      ~{true="--skip-header" false="" skip_header} \
      ~{true="--invert" false="" invert}
  >>>
  parameter_meta {
    skip_header: "Write gVCF output without header"
    invert: "Invert the filter so that only non-variant records are  output."
  }
}