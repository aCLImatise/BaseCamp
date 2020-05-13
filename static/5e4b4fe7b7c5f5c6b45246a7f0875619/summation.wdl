version 1.0

task Summation.pl {
  input {
    String? perlPerl
    String? summationSummationPl
    String? fastFastQReadAvgFile1
    String? fastFastQReadAvgFile2
    String? fastFastReadQAvgFileN
    String? outputOutputFile
  }
  command <<<
    summation.pl \
      ~{perlPerl} \
      ~{summationSummationPl} \
      ~{fastFastQReadAvgFile1} \
      ~{fastFastQReadAvgFile2} \
      ~{fastFastReadQAvgFileN} \
      ~{outputOutputFile}
  >>>
}