version 1.0

task BpSreformat.pl {
  input {
    String? noNoInterleaved
    String? idIdLineBreak
    String? percentagesPercentages
    String? flatFlat
    String? lineLineLength
    String? mrMrBayes
  }
  command <<<
    bp_sreformat.pl \
      ~{noNoInterleaved} \
      ~{idIdLineBreak} \
      ~{percentagesPercentages} \
      ~{flatFlat} \
      ~{lineLineLength} \
      ~{mrMrBayes}
  >>>
}