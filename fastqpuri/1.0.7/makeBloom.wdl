version 1.0

task MakeBloom {
  input {
    Boolean fastFastA
    Boolean outputOutput
    Boolean kmKmErSize
    String falFalPosRate
    Boolean hashHashNum
    Boolean bfBfSizeBits
  }
  command <<<
    makeBloom \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--kmersize" false="" kmKmErSize} \
      ~{if defined(falFalPosRate) then ("--fal_pos_rate " +  '"' + falFalPosRate + '"') else ""} \
      ~{true="--hashNum" false="" hashHashNum} \
      ~{true="--bfsizeBits" false="" bfBfSizeBits}
  >>>
}