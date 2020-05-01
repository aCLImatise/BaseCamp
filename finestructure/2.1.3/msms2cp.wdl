version 1.0

task Msms2cp.pl {
  input {
    String? perlPerl
    String? msms2cpplMsms2cppl
    String? msmsMsmsOutputTxt
    String? outputOutputFilenamePrefix
  }
  command <<<
    msms2cp.pl \
      ~{perlPerl} \
      ~{msms2cpplMsms2cppl} \
      ~{msmsMsmsOutputTxt} \
      ~{outputOutputFilenamePrefix}
  >>>
}