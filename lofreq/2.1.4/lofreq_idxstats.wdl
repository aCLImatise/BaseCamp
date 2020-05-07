version 1.0

task LofreqIdxstats {
  input {
    String? samSamTools
    String? idxIdxStats
    String? inInBam
  }
  command <<<
    lofreq idxstats \
      ~{samSamTools} \
      ~{idxIdxStats} \
      ~{inInBam}
  >>>
}