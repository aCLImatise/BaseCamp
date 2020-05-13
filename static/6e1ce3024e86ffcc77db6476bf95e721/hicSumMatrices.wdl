version 1.0

task HicSumMatrices {
  input {
    Boolean matricesMatrices
    String outOutFilename
  }
  command <<<
    hicSumMatrices \
      ~{true="--matrices" false="" matricesMatrices} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""}
  >>>
}