version 1.0

task MakeFileForSubsamplingFromCollapsed.py {
  input {
    String inputInputPrefix
    String outputOutputPrefix
    String matchMatchAnNotParsed
    String sqSqAntiClass
    String demuxDemux
    Boolean includeIncludeSingleExons
    String? makeMake
    String? subsampleSubsampleReady
    File? fileFile
    String? fromFrom
    String? isoIsoSeq
    String? collapsedCollapsed
    String? outputOutput
  }
  command <<<
    make_file_for_subsampling_from_collapsed.py \
      ~{makeMake} \
      ~{if defined(inputInputPrefix) then ("--input_prefix " +  '"' + inputInputPrefix + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(matchMatchAnNotParsed) then ("--matchAnnot_parsed " +  '"' + matchMatchAnNotParsed + '"') else ""} \
      ~{if defined(sqSqAntiClass) then ("--sqanti_class " +  '"' + sqSqAntiClass + '"') else ""} \
      ~{if defined(demuxDemux) then ("--demux " +  '"' + demuxDemux + '"') else ""} \
      ~{true="--include_single_exons" false="" includeIncludeSingleExons} \
      ~{subsampleSubsampleReady} \
      ~{fileFile} \
      ~{fromFrom} \
      ~{isoIsoSeq} \
      ~{collapsedCollapsed} \
      ~{outputOutput}
  >>>
}