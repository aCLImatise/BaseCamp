version 1.0

task TomboFilterRawSignalMatching {
  input {
    Array[Int] fast_five_based_irs
    Float? signal_matching_score
    Int? corrected_group
    Boolean? quiet
  }
  command <<<
    tombo filter raw_signal_matching \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(signal_matching_score) then ("--signal-matching-score " +  '"' + signal_matching_score + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    signal_matching_score: "Observed to expected signal matching score (higher\\nscore indicates poor matching). Sample type defaults:\\nRNA : 2 || DNA : 1.1"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}