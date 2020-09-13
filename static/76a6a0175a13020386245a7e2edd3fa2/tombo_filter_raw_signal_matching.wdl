version 1.0

task TomboFilterRawSignalMatching {
  input {
    Boolean? var_0
    Array[Int] fast_five_based_irs
    Int? corrected_group
    Boolean? quiet
    String var_4
  }
  command <<<
    tombo filter raw_signal_matching \
      ~{var_4} \
      ~{if (var_0) then "--signal-matching-score" else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    var_0: ""
    fast_five_based_irs: "Directories containing fast5 files."
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    quiet: "Don't print status information."
    var_4: "[--corrected-group CORRECTED_GROUP]"
  }
  output {
    File out_stdout = stdout()
  }
}