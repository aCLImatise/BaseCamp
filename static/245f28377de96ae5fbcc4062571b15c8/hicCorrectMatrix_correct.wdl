version 1.0

task HicCorrectMatrixCorrect {
  input {
    String matrixMatrix
    String outOutFilename
    Int iterIterNum
    String inflationInflationCutOff
    String transTransCutOff
    String sequencedSequencedCountCutOff
    Array[String]+ chromosomesChromosomes
    Boolean skipSkipDiagonal
    Boolean perPerChr
    Boolean verboseVerbose
  }
  command <<<
    hicCorrectMatrix correct \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(iterIterNum) then ("--iterNum " +  '"' + iterIterNum + '"') else ""} \
      ~{if defined(inflationInflationCutOff) then ("--inflationCutoff " +  '"' + inflationInflationCutOff + '"') else ""} \
      ~{if defined(transTransCutOff) then ("--transCutoff " +  '"' + transTransCutOff + '"') else ""} \
      ~{if defined(sequencedSequencedCountCutOff) then ("--sequencedCountCutoff " +  '"' + sequencedSequencedCountCutOff + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{true="--skipDiagonal" false="" skipSkipDiagonal} \
      ~{true="--perchr" false="" perPerChr} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}