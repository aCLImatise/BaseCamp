version 1.0

task PyprophetFilter {
  input {
    File inIn
    Float maxMaxPrecursorPep
    Float maxMaxPeakGroupPep
    Float maxMaxTransitionPep
  }
  command <<<
    pyprophet filter \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(maxMaxPrecursorPep) then ("--max_precursor_pep " +  '"' + maxMaxPrecursorPep + '"') else ""} \
      ~{if defined(maxMaxPeakGroupPep) then ("--max_peakgroup_pep " +  '"' + maxMaxPeakGroupPep + '"') else ""} \
      ~{if defined(maxMaxTransitionPep) then ("--max_transition_pep " +  '"' + maxMaxTransitionPep + '"') else ""}
  >>>
}