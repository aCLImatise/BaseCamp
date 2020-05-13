version 1.0

task Hisat2ReadStatistics.py {
  input {
    String nN
    String? readReadFile
  }
  command <<<
    hisat2_read_statistics.py \
      ~{readReadFile} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""}
  >>>
}