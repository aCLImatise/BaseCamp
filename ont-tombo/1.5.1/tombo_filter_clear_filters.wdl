version 1.0

task TomboFilterClearFilters {
  input {
    Array[String] fast_five_based_irs
    String? corrected_group
    Boolean? quiet
  }
  command <<<
    tombo filter clear_filters \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    quiet: "Don't print status information."
  }
}