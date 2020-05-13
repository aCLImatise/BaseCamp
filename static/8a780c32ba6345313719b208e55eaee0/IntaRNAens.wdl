version 1.0

task IntaRNAens {
  input {
    Boolean qQ
    Boolean tT
    String helixHelixMinBp
    String helixHelixMaxBp
    String helixHelixMaxIl
    String helixHelixMinPu
    String helixHelixMaxE
    Boolean helixHelixFullE
    Boolean noNoSeed
    String seedSeedTq
    String seedSeedBp
    Boolean mM
    String modelModel
    String accAcc
    String intIntLenMax
    String intIntLoopMax
    String outOut
    String outOutSep
    String outOutMode
    Boolean nN
    String outOutOverlap
    String threadsThreads
    String personalityPersonality
    String parameterParameterFile
    Boolean fullFullHelp
  }
  command <<<
    IntaRNAens \
      ~{true="-q" false="" qQ} \
      ~{true="-t" false="" tT} \
      ~{if defined(helixHelixMinBp) then ("--helixMinBP " +  '"' + helixHelixMinBp + '"') else ""} \
      ~{if defined(helixHelixMaxBp) then ("--helixMaxBP " +  '"' + helixHelixMaxBp + '"') else ""} \
      ~{if defined(helixHelixMaxIl) then ("--helixMaxIL " +  '"' + helixHelixMaxIl + '"') else ""} \
      ~{if defined(helixHelixMinPu) then ("--helixMinPu " +  '"' + helixHelixMinPu + '"') else ""} \
      ~{if defined(helixHelixMaxE) then ("--helixMaxE " +  '"' + helixHelixMaxE + '"') else ""} \
      ~{true="--helixFullE" false="" helixHelixFullE} \
      ~{true="--noSeed" false="" noNoSeed} \
      ~{if defined(seedSeedTq) then ("--seedTQ " +  '"' + seedSeedTq + '"') else ""} \
      ~{if defined(seedSeedBp) then ("--seedBP " +  '"' + seedSeedBp + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(accAcc) then ("--acc " +  '"' + accAcc + '"') else ""} \
      ~{if defined(intIntLenMax) then ("--intLenMax " +  '"' + intIntLenMax + '"') else ""} \
      ~{if defined(intIntLoopMax) then ("--intLoopMax " +  '"' + intIntLoopMax + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutSep) then ("--outSep " +  '"' + outOutSep + '"') else ""} \
      ~{if defined(outOutMode) then ("--outMode " +  '"' + outOutMode + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{if defined(outOutOverlap) then ("--outOverlap " +  '"' + outOutOverlap + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(personalityPersonality) then ("--personality " +  '"' + personalityPersonality + '"') else ""} \
      ~{if defined(parameterParameterFile) then ("--parameterFile " +  '"' + parameterParameterFile + '"') else ""} \
      ~{true="--fullhelp" false="" fullFullHelp}
  >>>
}