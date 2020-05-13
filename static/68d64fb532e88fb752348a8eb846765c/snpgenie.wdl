version 1.0

task Snpgenie.pl {
  input {
    Boolean vcfVcfFormat
    Boolean workdirWorkdir
    Boolean vcfVcfFormat
  }
  command <<<
    snpgenie.pl \
      ~{true="--vcfformat" false="" vcfVcfFormat} \
      ~{true="--workdir" false="" workdirWorkdir} \
      ~{true="--vcfformat" false="" vcfVcfFormat}
  >>>
}