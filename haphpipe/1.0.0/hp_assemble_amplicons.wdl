version 1.0

task HpAssembleAmplicons {
  input {
    String contigsContigsFa
    String refRefFa
    String refRefGtf
    String outdirOutdir
    String sampleSampleId
    String paddingPadding
    Int minMinContigLen
    Boolean keepKeepTmp
    Boolean quietQuiet
    String logLogFile
    Boolean debugDebug
  }
  command <<<
    hp_assemble_amplicons \
      ~{if defined(contigsContigsFa) then ("--contigs_fa " +  '"' + contigsContigsFa + '"') else ""} \
      ~{if defined(refRefFa) then ("--ref_fa " +  '"' + refRefFa + '"') else ""} \
      ~{if defined(refRefGtf) then ("--ref_gtf " +  '"' + refRefGtf + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(sampleSampleId) then ("--sample_id " +  '"' + sampleSampleId + '"') else ""} \
      ~{if defined(paddingPadding) then ("--padding " +  '"' + paddingPadding + '"') else ""} \
      ~{if defined(minMinContigLen) then ("--min_contig_len " +  '"' + minMinContigLen + '"') else ""} \
      ~{true="--keep_tmp" false="" keepKeepTmp} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}