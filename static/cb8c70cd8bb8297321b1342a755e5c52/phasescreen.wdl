version 1.0

task Phasescreen.pl {
  input {
    String? perlPerl
    String? phasesPhasesScreenPl
    String? phasePhaseFile
    String? outputOutputPhaseFile
  }
  command <<<
    phasescreen.pl \
      ~{perlPerl} \
      ~{phasesPhasesScreenPl} \
      ~{phasePhaseFile} \
      ~{outputOutputPhaseFile}
  >>>
}