version 1.0

task LofreqCheckrefIn.bam {
  input {
    String? reReFfa
    String? inInBam
  }
  command <<<
    lofreq checkref in.bam \
      ~{reReFfa} \
      ~{inInBam}
  >>>
}