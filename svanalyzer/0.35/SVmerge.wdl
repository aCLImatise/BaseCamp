version 1.0

task SVmerge {
  input {
    Boolean prefixPrefix
    Boolean variantsVariants
    Boolean fFOf
    Boolean maxMaxDist
    Boolean variantVariantDelimiter
  }
  command <<<
    SVmerge \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--variants" false="" variantsVariants} \
      ~{true="--fof" false="" fFOf} \
      ~{true="--maxdist" false="" maxMaxDist} \
      ~{true="--variantdelimiter" false="" variantVariantDelimiter}
  >>>
}