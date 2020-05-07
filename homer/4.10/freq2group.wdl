version 1.0

task Freq2group.pl {
  input {
    String? freqFreq
  }
  command <<<
    freq2group.pl \
      ~{freqFreq}
  >>>
}