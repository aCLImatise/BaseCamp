version 1.0

task TbVariantFilter {
  input {
    Boolean closeCloseToInDelFilter
    String inInDelWindowSize
    Boolean minMinPercentageAltFilter
    Int minMinPercentageAlt
    Boolean minMinDepthFilter
    Int minMinDepth
    Boolean snvSnvOnlyFilter
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    tb_variant_filter \
      ~{inputInputFile} \
      ~{true="--close_to_indel_filter" false="" closeCloseToInDelFilter} \
      ~{if defined(inInDelWindowSize) then ("--indel_window_size " +  '"' + inInDelWindowSize + '"') else ""} \
      ~{true="--min_percentage_alt_filter" false="" minMinPercentageAltFilter} \
      ~{if defined(minMinPercentageAlt) then ("--min_percentage_alt " +  '"' + minMinPercentageAlt + '"') else ""} \
      ~{true="--min_depth_filter" false="" minMinDepthFilter} \
      ~{if defined(minMinDepth) then ("--min_depth " +  '"' + minMinDepth + '"') else ""} \
      ~{true="--snv_only_filter" false="" snvSnvOnlyFilter} \
      ~{outputOutputFile}
  >>>
}