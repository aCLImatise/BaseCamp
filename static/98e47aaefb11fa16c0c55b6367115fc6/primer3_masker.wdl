version 1.0

task Primer3Masker {
  input {
    Boolean probabilityProbabilityCutOff
    Boolean kmKmErListsPath
    Boolean listListPrefix
    String absoluteAbsoluteValueCutOff
    Boolean listList
    Boolean maskMask5p
    Boolean maskMask3p
    Boolean maskingMaskingChar
    Boolean softSoftMask
    Boolean maskingMaskingDirection
  }
  command <<<
    primer3_masker \
      ~{true="--probability_cutoff" false="" probabilityProbabilityCutOff} \
      ~{true="--kmer_lists_path" false="" kmKmErListsPath} \
      ~{true="--list_prefix" false="" listListPrefix} \
      ~{if defined(absoluteAbsoluteValueCutOff) then ("--absolute_value_cutoff " +  '"' + absoluteAbsoluteValueCutOff + '"') else ""} \
      ~{true="--list" false="" listList} \
      ~{true="--mask_5p" false="" maskMask5p} \
      ~{true="--mask_3p" false="" maskMask3p} \
      ~{true="--masking_char" false="" maskingMaskingChar} \
      ~{true="--soft_mask" false="" softSoftMask} \
      ~{true="--masking_direction" false="" maskingMaskingDirection}
  >>>
}