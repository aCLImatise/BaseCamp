version 1.0

task LofreqCheckrefRef.fa {
  input {
    String? inInBam
  }
  command <<<
    lofreq checkref ref.fa \
      ~{inInBam}
  >>>
}