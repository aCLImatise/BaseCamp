version 1.0

task HpPairwiseAlign {
  input {
    String ampliconsAmpliconsFa
    String refRefFa
    String refRefGtf
    String outdirOutdir
    Boolean keepKeepTmp
    Boolean quietQuiet
    String logLogFile
    Boolean debugDebug
  }
  command <<<
    hp_pairwise_align \
      ~{if defined(ampliconsAmpliconsFa) then ("--amplicons_fa " +  '"' + ampliconsAmpliconsFa + '"') else ""} \
      ~{if defined(refRefFa) then ("--ref_fa " +  '"' + refRefFa + '"') else ""} \
      ~{if defined(refRefGtf) then ("--ref_gtf " +  '"' + refRefGtf + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--keep_tmp" false="" keepKeepTmp} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}