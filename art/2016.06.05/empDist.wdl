version 1.0

task EmpDist.pl {
  input {
    String? perlPerl
    String? empEmpDistPl
    String? freqFreqFile
    String? outputOutputFile
  }
  command <<<
    empDist.pl \
      ~{perlPerl} \
      ~{empEmpDistPl} \
      ~{freqFreqFile} \
      ~{outputOutputFile}
  >>>
}