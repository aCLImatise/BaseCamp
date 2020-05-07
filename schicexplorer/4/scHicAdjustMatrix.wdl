version 1.0

task ScHicAdjustMatrix {
  input {
    String matrixMatrix
    String outOutFilename
    Array[String]+ chromosomesChromosomes
    String createCreateSubmatrix
    String actionAction
    String threadsThreads
  }
  command <<<
    scHicAdjustMatrix \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(createCreateSubmatrix) then ("--createSubmatrix " +  '"' + createCreateSubmatrix + '"') else ""} \
      ~{if defined(actionAction) then ("--action " +  '"' + actionAction + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}