version 1.0

task ReliabilityProfile.pl {
  input {
    String? locaLocaRnaOutputDir
  }
  command <<<
    reliability-profile.pl \
      ~{locaLocaRnaOutputDir}
  >>>
}