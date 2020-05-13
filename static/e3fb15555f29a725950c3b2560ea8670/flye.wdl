version 1.0

task Flye {
  input {
    Array[File]+ pacPacBioRaw
    Array[File]+ pacPacBioCorr
    Array[File]+ pacPacBioHifi
    Array[File]+ nanoNanoRaw
    Array[File]+ nanoNanoCorr
    Array[File]+ subassembliesSubassemblies
    Int genomeGenomeSize
    File outOutDir
    Int threadsThreads
    Int iterationsIterations
    Int minMinOverlap
    Int asmAsmCoverage
    Boolean plasmidsPlasmids
    Boolean metaMeta
    Boolean keepKeepHaplotypes
    Boolean trestleTrestle
    File polishPolishTarget
    Boolean resumeResume
    String resumeResumeFrom
    String stopStopAfter
    Boolean debugDebug
  }
  command <<<
    flye \
      ~{if defined(pacPacBioRaw) then ("--pacbio-raw " +  '"' + pacPacBioRaw + '"') else ""} \
      ~{if defined(pacPacBioCorr) then ("--pacbio-corr " +  '"' + pacPacBioCorr + '"') else ""} \
      ~{if defined(pacPacBioHifi) then ("--pacbio-hifi " +  '"' + pacPacBioHifi + '"') else ""} \
      ~{if defined(nanoNanoRaw) then ("--nano-raw " +  '"' + nanoNanoRaw + '"') else ""} \
      ~{if defined(nanoNanoCorr) then ("--nano-corr " +  '"' + nanoNanoCorr + '"') else ""} \
      ~{if defined(subassembliesSubassemblies) then ("--subassemblies " +  '"' + subassembliesSubassemblies + '"') else ""} \
      ~{if defined(genomeGenomeSize) then ("--genome-size " +  '"' + genomeGenomeSize + '"') else ""} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(asmAsmCoverage) then ("--asm-coverage " +  '"' + asmAsmCoverage + '"') else ""} \
      ~{true="--plasmids" false="" plasmidsPlasmids} \
      ~{true="--meta" false="" metaMeta} \
      ~{true="--keep-haplotypes" false="" keepKeepHaplotypes} \
      ~{true="--trestle" false="" trestleTrestle} \
      ~{if defined(polishPolishTarget) then ("--polish-target " +  '"' + polishPolishTarget + '"') else ""} \
      ~{true="--resume" false="" resumeResume} \
      ~{if defined(resumeResumeFrom) then ("--resume-from " +  '"' + resumeResumeFrom + '"') else ""} \
      ~{if defined(stopStopAfter) then ("--stop-after " +  '"' + stopStopAfter + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}