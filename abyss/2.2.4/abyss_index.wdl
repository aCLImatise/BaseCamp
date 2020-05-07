version 1.0

task AbyssIndex {
  input {
    Boolean bothBoth
    Boolean faiFai
    Boolean fmFm
    Boolean fa2bwtFa2bwt
    Boolean bwt2fmBwt2fm
    String alphabetAlphabet
    Boolean alphaAlpha
    Boolean dnaDna
    Boolean proteinProtein
    String sampleSample
    Boolean decompressDecompress
    Boolean stdoutStdout
    Boolean verboseVerbose
  }
  command <<<
    abyss-index \
      ~{true="--both" false="" bothBoth} \
      ~{true="--fai" false="" faiFai} \
      ~{true="--fm" false="" fmFm} \
      ~{true="--fa2bwt" false="" fa2bwtFa2bwt} \
      ~{true="--bwt2fm" false="" bwt2fmBwt2fm} \
      ~{if defined(alphabetAlphabet) then ("--alphabet " +  '"' + alphabetAlphabet + '"') else ""} \
      ~{true="--alpha" false="" alphaAlpha} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--protein" false="" proteinProtein} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{true="--decompress" false="" decompressDecompress} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}