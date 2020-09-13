version 1.0

task TomboFilterGenomeLocations {
  input {
    Array[Int] fast_five_based_irs
    Array[String] include_regions
    Boolean? include_partial_overlap
    Int? corrected_group
    Boolean? quiet
  }
  command <<<
    tombo filter genome_locations \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(include_regions) then ("--include-regions " +  '"' + include_regions + '"') else ""} \
      ~{if (include_partial_overlap) then "--include-partial-overlap" else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    include_regions: "Filter out reads not falling completely within include\\nregions. Omit start and end coordinates to include an\\nentire chromosome/sequence record. Format regions as\\n\\\"chrm[:start-end] [chrm2[:start2-end2] ...]\\\"."
    include_partial_overlap: "Include reads that partially overlap the specified\\nregion. Default: Only include reads completely\\ncontained in a specified region"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}