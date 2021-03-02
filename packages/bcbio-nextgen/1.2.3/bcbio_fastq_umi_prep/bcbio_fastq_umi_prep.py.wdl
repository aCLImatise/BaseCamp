version 1.0

task BcbioFastqUmiPreppy {
  command <<<
    bcbio_fastq_umi_prep_py
  >>>
  output {
    File out_stdout = stdout()
  }
}