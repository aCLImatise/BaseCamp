version 1.0

task HpCallVariants {
  input {
    String alnAlnBam
    String refRefFa
    String outdirOutdir
    Boolean emitEmitAll
    Int minMinBaseQual
    String nNCpu
    String xXMx
    Boolean keepKeepTmp
    Boolean quietQuiet
    String logLogFile
    Boolean debugDebug
  }
  command <<<
    hp_call_variants \
      ~{if defined(alnAlnBam) then ("--aln_bam " +  '"' + alnAlnBam + '"') else ""} \
      ~{if defined(refRefFa) then ("--ref_fa " +  '"' + refRefFa + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--emit_all" false="" emitEmitAll} \
      ~{if defined(minMinBaseQual) then ("--min_base_qual " +  '"' + minMinBaseQual + '"') else ""} \
      ~{if defined(nNCpu) then ("--ncpu " +  '"' + nNCpu + '"') else ""} \
      ~{if defined(xXMx) then ("--xmx " +  '"' + xXMx + '"') else ""} \
      ~{true="--keep_tmp" false="" keepKeepTmp} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}