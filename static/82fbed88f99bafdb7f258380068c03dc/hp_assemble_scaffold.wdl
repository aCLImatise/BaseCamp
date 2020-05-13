version 1.0

task HpAssembleScaffold {
  input {
    String contigsContigsFa
    String refRefFa
    String outdirOutdir
    String seqnameSeqname
    Boolean keepKeepTmp
    Boolean quietQuiet
    String logLogFile
    Boolean debugDebug
  }
  command <<<
    hp_assemble_scaffold \
      ~{if defined(contigsContigsFa) then ("--contigs_fa " +  '"' + contigsContigsFa + '"') else ""} \
      ~{if defined(refRefFa) then ("--ref_fa " +  '"' + refRefFa + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(seqnameSeqname) then ("--seqname " +  '"' + seqnameSeqname + '"') else ""} \
      ~{true="--keep_tmp" false="" keepKeepTmp} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}