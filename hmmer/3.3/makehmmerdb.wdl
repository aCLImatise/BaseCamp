version 1.0

task Makehmmerdb {
  input {
    String inInFormat
    String binBinLength
    String saSaFreq
    String blockBlockSize
  }
  command <<<
    makehmmerdb \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(binBinLength) then ("--bin_length " +  '"' + binBinLength + '"') else ""} \
      ~{if defined(saSaFreq) then ("--sa_freq " +  '"' + saSaFreq + '"') else ""} \
      ~{if defined(blockBlockSize) then ("--block_size " +  '"' + blockBlockSize + '"') else ""}
  >>>
}