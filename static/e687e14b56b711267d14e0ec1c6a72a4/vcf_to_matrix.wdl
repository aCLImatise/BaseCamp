version 1.0

task VcfToMatrix {
  input {
    String modeMode
    String referenceReferenceFastA
    String referenceReferenceDups
    Array[String]+ inputInputFiles
    String matrixMatrixFolder
    String statsStatsFolder
    Int minimumMinimumCoverage
    Int minimumMinimumProportion
    String numNumThreads
    String dDToFile
  }
  command <<<
    vcf_to_matrix \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(referenceReferenceFastA) then ("--reference-fasta " +  '"' + referenceReferenceFastA + '"') else ""} \
      ~{if defined(referenceReferenceDups) then ("--reference-dups " +  '"' + referenceReferenceDups + '"') else ""} \
      ~{if defined(inputInputFiles) then ("--input-files " +  '"' + inputInputFiles + '"') else ""} \
      ~{if defined(matrixMatrixFolder) then ("--matrix-folder " +  '"' + matrixMatrixFolder + '"') else ""} \
      ~{if defined(statsStatsFolder) then ("--stats-folder " +  '"' + statsStatsFolder + '"') else ""} \
      ~{if defined(minimumMinimumCoverage) then ("--minimum-coverage " +  '"' + minimumMinimumCoverage + '"') else ""} \
      ~{if defined(minimumMinimumProportion) then ("--minimum-proportion " +  '"' + minimumMinimumProportion + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(dDToFile) then ("--dto-file " +  '"' + dDToFile + '"') else ""}
  >>>
}