version 1.0

task GetSeqStats.py {
  input {
    String binBinWidth
    File? filenameFilename
  }
  command <<<
    get_seq_stats.py \
      ~{filenameFilename} \
      ~{if defined(binBinWidth) then ("--binwidth " +  '"' + binBinWidth + '"') else ""}
  >>>
}