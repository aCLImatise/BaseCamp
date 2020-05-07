version 1.0

task FaFilterNIn.faOut.fa {
  input {
    Int? maxMaxPercentN
  }
  command <<<
    faFilterN in.fa out.fa \
      ~{maxMaxPercentN}
  >>>
}