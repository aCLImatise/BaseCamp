version 1.0

task TomboFilterLevelCoverage {
  input {
    Array[Int] fast_five_based_irs
    Float? percent_to_filter
    Int? corrected_group
    Boolean? quiet
  }
  command <<<
    tombo filter level_coverage \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(percent_to_filter) then ("--percent-to-filter " +  '"' + percent_to_filter + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    percent_to_filter: "Percentage of all reads to filter. Reads are randomly\\nselected weighted according to the approximate\\ncoverage at the mapped genomic location. This can be\\nuseful in modeling and testing. Default: 10.000000"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}