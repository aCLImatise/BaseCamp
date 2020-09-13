version 1.0

task Iucomputequaldictsfromfastq {
  command <<<
    iu_compute_qual_dicts_from_fastq
  >>>
  output {
    File out_stdout = stdout()
  }
}