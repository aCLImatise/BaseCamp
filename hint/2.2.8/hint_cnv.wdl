version 1.0

task HintCnv {
  input {
    String matrixMatrixFile
    String refRefDir
    Boolean mapMapTrack
    String bicBicSeq
    Boolean doDoIter
    String formatFormat
    String enzymeEnzyme
    String resolutionResolution
    String genomeGenome
    String outdirOutdir
    String nameName
    String threadsThreads
  }
  command <<<
    hint cnv \
      ~{if defined(matrixMatrixFile) then ("--matrixfile " +  '"' + matrixMatrixFile + '"') else ""} \
      ~{if defined(refRefDir) then ("--refdir " +  '"' + refRefDir + '"') else ""} \
      ~{true="--maptrack" false="" mapMapTrack} \
      ~{if defined(bicBicSeq) then ("--bicseq " +  '"' + bicBicSeq + '"') else ""} \
      ~{true="--doiter" false="" doDoIter} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(enzymeEnzyme) then ("--enzyme " +  '"' + enzymeEnzyme + '"') else ""} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}