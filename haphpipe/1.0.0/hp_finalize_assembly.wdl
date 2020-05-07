version 1.0

task HpFinalizeAssembly {
  input {
    String fq1Fq1
    String fq2Fq2
    String fFQu
    String refRefFa
    String outdirOutdir
    String bt2Bt2Preset
    String sampleSampleId
    String nNCpu
    Boolean keepKeepTmp
    Boolean quietQuiet
    String logLogFile
    Boolean debugDebug
  }
  command <<<
    hp_finalize_assembly \
      ~{if defined(fq1Fq1) then ("--fq1 " +  '"' + fq1Fq1 + '"') else ""} \
      ~{if defined(fq2Fq2) then ("--fq2 " +  '"' + fq2Fq2 + '"') else ""} \
      ~{if defined(fFQu) then ("--fqU " +  '"' + fFQu + '"') else ""} \
      ~{if defined(refRefFa) then ("--ref_fa " +  '"' + refRefFa + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(bt2Bt2Preset) then ("--bt2_preset " +  '"' + bt2Bt2Preset + '"') else ""} \
      ~{if defined(sampleSampleId) then ("--sample_id " +  '"' + sampleSampleId + '"') else ""} \
      ~{if defined(nNCpu) then ("--ncpu " +  '"' + nNCpu + '"') else ""} \
      ~{true="--keep_tmp" false="" keepKeepTmp} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}