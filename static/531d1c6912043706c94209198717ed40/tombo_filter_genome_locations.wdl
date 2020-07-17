version 1.0

task TomboFilterGenomeLocations {
  input {
    Array[String] fast_five_based_irs
    Array[String] include_regions
    Boolean? include_partial_overlap
    String? corrected_group
    Boolean? quiet
  }
  command <<<
    tombo filter genome_locations \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(include_regions) then ("--include-regions " +  '"' + include_regions + '"') else ""} \
      ~{true="--include-partial-overlap" false="" include_partial_overlap} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    include_regions: "Filter out reads not falling completely within include regions. Omit start and end coordinates to include an entire chromosome/sequence record. Format regions as \"chrm[:start-end] [chrm2[:start2-end2] ...]\"."
    include_partial_overlap: "Include reads that partially overlap the specified region. Default: Only include reads completely contained in a specified region"
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    quiet: "Don't print status information."
  }
}