version 1.0

task FilterCorrectionOverlaps {
  input {
    Boolean? no_log
    Boolean? no_stats
  }
  command <<<
    filterCorrectionOverlaps \
      ~{true="-nolog" false="" no_log} \
      ~{true="-nostats" false="" no_stats}
  >>>
  parameter_meta {
    no_log: "don't create 'scoreFile.log'"
    no_stats: "don't create 'scoreFile.stats'"
  }
}