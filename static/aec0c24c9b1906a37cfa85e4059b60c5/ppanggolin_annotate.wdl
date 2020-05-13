version 1.0

task PpanggolinAnnotate {
  input {
    String fastFastA
    String anAnNo
    String outputOutput
    Boolean overlapOverlap
    Boolean noNoRna
    String kingdomKingdom
    String translationTranslationTable
    String basenameBasename
    Boolean useUsePseudo
    String tmpdirTmpdir
    Boolean verboseVerbose
    String logLog
    String cpuCpu
    Boolean forceForce
  }
  command <<<
    ppanggolin annotate \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(anAnNo) then ("--anno " +  '"' + anAnNo + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--overlap" false="" overlapOverlap} \
      ~{true="--norna" false="" noNoRna} \
      ~{if defined(kingdomKingdom) then ("--kingdom " +  '"' + kingdomKingdom + '"') else ""} \
      ~{if defined(translationTranslationTable) then ("--translation_table " +  '"' + translationTranslationTable + '"') else ""} \
      ~{if defined(basenameBasename) then ("--basename " +  '"' + basenameBasename + '"') else ""} \
      ~{true="--use_pseudo" false="" useUsePseudo} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}