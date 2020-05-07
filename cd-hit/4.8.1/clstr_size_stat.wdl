version 1.0

task ClstrSizeStat.pl {
  input {
    String? clClStrFile
  }
  command <<<
    clstr_size_stat.pl \
      ~{clClStrFile}
  >>>
}