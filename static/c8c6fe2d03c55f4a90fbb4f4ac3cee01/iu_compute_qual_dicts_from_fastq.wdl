version 1.0

task Iucomputequaldictsfromfastq {
  command <<<
    iu_compute_qual_dicts_from_fastq
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-utils:2.10--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}