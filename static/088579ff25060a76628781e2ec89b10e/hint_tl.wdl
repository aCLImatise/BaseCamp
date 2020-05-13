version 1.0

task HintTl {
  input {
    String matrixMatrixFile
    String refRefDir
    String enzymeEnzyme
    String formatFormat
    String pPPath
    String genomeGenome
    String chimericChimeric
    String backBackDir
    String cutCutOff
    String outdirOutdir
    String nameName
    String threadsThreads
  }
  command <<<
    hint tl \
      ~{if defined(matrixMatrixFile) then ("--matrixfile " +  '"' + matrixMatrixFile + '"') else ""} \
      ~{if defined(refRefDir) then ("--refdir " +  '"' + refRefDir + '"') else ""} \
      ~{if defined(enzymeEnzyme) then ("--enzyme " +  '"' + enzymeEnzyme + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(pPPath) then ("--ppath " +  '"' + pPPath + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(chimericChimeric) then ("--chimeric " +  '"' + chimericChimeric + '"') else ""} \
      ~{if defined(backBackDir) then ("--backdir " +  '"' + backBackDir + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}