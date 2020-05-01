version 1.0

task HicTransform {
  input {
    String matrixMatrix
    String outOutFilename
    String methodMethod
    Boolean ligationLigationFactor
    Array[String]+ chromosomesChromosomes
    Boolean perPerChromosome
  }
  command <<<
    hicTransform \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{true="--ligation_factor" false="" ligationLigationFactor} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{true="--perChromosome" false="" perPerChromosome}
  >>>
}