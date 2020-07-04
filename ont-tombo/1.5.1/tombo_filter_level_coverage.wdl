version 1.0

task TomboFilterLevelCoverage {
  input {
    Array[String] fast_five_based_irs
    String? percent_to_filter
    String? corrected_group
    Boolean? quiet
  }
  command <<<
    tombo filter level_coverage \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(percent_to_filter) then ("--percent-to-filter " +  '"' + percent_to_filter + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    percent_to_filter: "Percentage of all reads to filter. Reads are randomly selected weighted according to the approximate coverage at the mapped genomic location. This can be useful in modeling and testing. Default: 10.000000"
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    quiet: "Don't print status information."
  }
}