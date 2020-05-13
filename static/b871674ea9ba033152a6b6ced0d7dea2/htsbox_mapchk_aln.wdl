version 1.0

task HtsboxMapchkAln.bam {
  input {
    String? reReFfa
  }
  command <<<
    htsbox mapchk aln.bam \
      ~{reReFfa}
  >>>
}