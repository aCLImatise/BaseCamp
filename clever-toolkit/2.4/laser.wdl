version 1.0

task Laser {
  input {
    Boolean extraExtraSensitive
    String tT
    Int mM
    String sS
    String sS
    String tmpdirTmpdir
    String coreCoreOptions
    String recalRecalOptions
    String wW
    Boolean keepKeepRawBam
    Boolean secondarySecondary
    Boolean xXA
    Boolean advAdvCigar
    Boolean dontDontRecalibrate
    Boolean interInterChromosomal
  }
  command <<<
    laser \
      ~{true="--extra-sensitive" false="" extraExtraSensitive} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(coreCoreOptions) then ("--core-options " +  '"' + coreCoreOptions + '"') else ""} \
      ~{if defined(recalRecalOptions) then ("--recal-options " +  '"' + recalRecalOptions + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{true="--keep_raw_bam" false="" keepKeepRawBam} \
      ~{true="--secondary" false="" secondarySecondary} \
      ~{true="--xa" false="" xXA} \
      ~{true="--adv-cigar" false="" advAdvCigar} \
      ~{true="--dont-recalibrate" false="" dontDontRecalibrate} \
      ~{true="--interchromosomal" false="" interInterChromosomal}
  >>>
}