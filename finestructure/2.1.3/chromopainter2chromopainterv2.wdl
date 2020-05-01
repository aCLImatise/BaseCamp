version 1.0

task Chromopainter2chromopainterv2.pl {
  input {
    String? perlPerl
    String? chromoChromoPainter2chromopainterv2pl
    String? phasePhaseFile
    String? outputOutputPhaseFile
  }
  command <<<
    chromopainter2chromopainterv2.pl \
      ~{perlPerl} \
      ~{chromoChromoPainter2chromopainterv2pl} \
      ~{phasePhaseFile} \
      ~{outputOutputPhaseFile}
  >>>
}