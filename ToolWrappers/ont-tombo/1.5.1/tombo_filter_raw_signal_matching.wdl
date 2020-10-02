version 1.0

task TomboFilterRawSignalMatching {
  input {
    Boolean? signal_matching_score
    Array[Int] fast_five_based_irs
    Int? corrected_group
    Boolean? quiet
  }
  command <<<
    tombo filter raw_signal_matching \
      ~{if (signal_matching_score) then "--signal-matching-score" else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    signal_matching_score: "SIGNAL_MATCHING_SCORE\\n[--corrected-group CORRECTED_GROUP]\\n[--quiet] [--help]"
    fast_five_based_irs: "Directories containing fast5 files."
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}