version 1.0

task ExtractVariants {
  input {
    Boolean skipSkipHeader
    Boolean invertInvert
  }
  command <<<
    extract_variants \
      ~{true="--skip-header" false="" skipSkipHeader} \
      ~{true="--invert" false="" invertInvert}
  >>>
}