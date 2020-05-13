version 1.0

task ClstrSizeHistogram.pl {
  input {
    String binBin
    String? clClStrFile
  }
  command <<<
    clstr_size_histogram.pl \
      ~{clClStrFile} \
      ~{if defined(binBin) then ("-bin " +  '"' + binBin + '"') else ""}
  >>>
}