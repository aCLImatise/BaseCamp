version 1.0

task Samtools.plShowALEN {
  input {
    String? inInSam
  }
  command <<<
    samtools.pl showALEN \
      ~{inInSam}
  >>>
}