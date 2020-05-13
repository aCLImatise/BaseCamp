version 1.0

task Beagle2chromopainter.pl {
  input {
    String? perlPerl
    String? beagleBeagle2chromopainterpl
    String? beagleBeaglePhasedOutputFile
    String? outputOutputFilenamePrefix
  }
  command <<<
    beagle2chromopainter.pl \
      ~{perlPerl} \
      ~{beagleBeagle2chromopainterpl} \
      ~{beagleBeaglePhasedOutputFile} \
      ~{outputOutputFilenamePrefix}
  >>>
}