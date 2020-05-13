version 1.0

task PyprophetIpf {
  input {
    File inIn
    File outOut
    Boolean ipfIpfMs1Scoring
    Boolean ipfIpfMs2Scoring
    Boolean ipfIpfH0
    Boolean ipfIpfGroupedFdr
    Float ipfIpfMaxPrecursorPep
    Float ipfIpfMaxPeakGroupPep
    Float ipfIpfMaxPrecursorPeakGroupPep
    Float ipfIpfMaxTransitionPep
  }
  command <<<
    pyprophet ipf \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--ipf_ms1_scoring" false="" ipfIpfMs1Scoring} \
      ~{true="--ipf_ms2_scoring" false="" ipfIpfMs2Scoring} \
      ~{true="--ipf_h0" false="" ipfIpfH0} \
      ~{true="--ipf_grouped_fdr" false="" ipfIpfGroupedFdr} \
      ~{if defined(ipfIpfMaxPrecursorPep) then ("--ipf_max_precursor_pep " +  '"' + ipfIpfMaxPrecursorPep + '"') else ""} \
      ~{if defined(ipfIpfMaxPeakGroupPep) then ("--ipf_max_peakgroup_pep " +  '"' + ipfIpfMaxPeakGroupPep + '"') else ""} \
      ~{if defined(ipfIpfMaxPrecursorPeakGroupPep) then ("--ipf_max_precursor_peakgroup_pep " +  '"' + ipfIpfMaxPrecursorPeakGroupPep + '"') else ""} \
      ~{if defined(ipfIpfMaxTransitionPep) then ("--ipf_max_transition_pep " +  '"' + ipfIpfMaxTransitionPep + '"') else ""}
  >>>
}