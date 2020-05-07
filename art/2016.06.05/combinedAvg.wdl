version 1.0

task CombinedAvg.pl {
  input {
    String? perlPerl
    String? combinedCombinedAvgPl
    String? freqFreqFile
  }
  command <<<
    combinedAvg.pl \
      ~{perlPerl} \
      ~{combinedCombinedAvgPl} \
      ~{freqFreqFile}
  >>>
}