version 1.0

task Phasesubsample.pl {
  input {
    String? perlPerl
    String? phasePhaseSubsamplePl
    String? fromFrom
    String? toTo
    String? phasePhaseFile
    String? outputOutputPhaseFile
  }
  command <<<
    phasesubsample.pl \
      ~{perlPerl} \
      ~{phasePhaseSubsamplePl} \
      ~{fromFrom} \
      ~{toTo} \
      ~{phasePhaseFile} \
      ~{outputOutputPhaseFile}
  >>>
}