version 1.0

task InStrainQuickProfile {
  input {
    String bamBam
    String fastFastA
    String stbStb
    String outputOutput
    String processesProcesses
    Boolean debugDebug
    String breadthBreadthCutOff
    String stringentStringentBreadthCutOff
  }
  command <<<
    inStrain quick_profile \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(stbStb) then ("--stb " +  '"' + stbStb + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(breadthBreadthCutOff) then ("--breadth_cutoff " +  '"' + breadthBreadthCutOff + '"') else ""} \
      ~{if defined(stringentStringentBreadthCutOff) then ("--stringent_breadth_cutoff " +  '"' + stringentStringentBreadthCutOff + '"') else ""}
  >>>
}