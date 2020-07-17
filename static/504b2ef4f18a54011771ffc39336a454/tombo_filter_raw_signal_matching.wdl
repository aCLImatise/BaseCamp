version 1.0

task TomboFilterRawSignalMatching {
  input {
    Array[String] fast_five_based_irs
    String? signal_matching_score
    String? corrected_group
    Boolean? quiet
  }
  command <<<
    tombo filter raw_signal_matching \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(signal_matching_score) then ("--signal-matching-score " +  '"' + signal_matching_score + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    signal_matching_score: "Observed to expected signal matching score (higher score indicates poor matching). Sample type defaults: RNA : 2 || DNA : 1.1"
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    quiet: "Don't print status information."
  }
}