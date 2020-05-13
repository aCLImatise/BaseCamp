version 1.0

task Fastqe {
  input {
    String minMinLen
    Boolean meanMean
    Boolean binBin
    Boolean minMin
    Boolean maxMax
    String logLog
    Boolean scaleScale
    String? fastFastAFile
  }
  command <<<
    fastqe \
      ~{fastFastAFile} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{true="--mean" false="" meanMean} \
      ~{true="--bin" false="" binBin} \
      ~{true="--min" false="" minMin} \
      ~{true="--max" false="" maxMax} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--scale" false="" scaleScale}
  >>>
}