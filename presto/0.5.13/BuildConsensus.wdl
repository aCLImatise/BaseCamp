version 1.0

task BuildConsensus.py {
  input {
    Array[String]+ sS
    Array[String]+ oO
    String outdirOutdir
    String outOutName
    String logLog
    Boolean failedFailed
    Boolean fastFastA
    String delimDelim
    String nprocNproc
    Boolean depDep
    Int maxMaxDiv
    Int maxMaxError
    String? consensusConsensusPass
    String? consensusConsensusFail
    String? primerPrimer
    String? prPrCount
    String? prPrCons
    String? prPrFreq
    String? consConsCount
  }
  command <<<
    BuildConsensus.py \
      ~{consensusConsensusPass} \
      ~{primerPrimer} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--failed" false="" failedFailed} \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(delimDelim) then ("--delim " +  '"' + delimDelim + '"') else ""} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{true="--dep" false="" depDep} \
      ~{if defined(maxMaxDiv) then ("--maxdiv " +  '"' + maxMaxDiv + '"') else ""} \
      ~{if defined(maxMaxError) then ("--maxerror " +  '"' + maxMaxError + '"') else ""} \
      ~{consensusConsensusFail} \
      ~{prPrCount} \
      ~{prPrCons} \
      ~{prPrFreq} \
      ~{consConsCount}
  >>>
}