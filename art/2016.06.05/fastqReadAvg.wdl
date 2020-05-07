version 1.0

task FastqReadAvg.pl {
  input {
    String? perlPerl
    String? fastFastQReadAvgPl
    String? fastFastQFile
  }
  command <<<
    fastqReadAvg.pl \
      ~{perlPerl} \
      ~{fastFastQReadAvgPl} \
      ~{fastFastQFile}
  >>>
}