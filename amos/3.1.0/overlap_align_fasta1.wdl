version 1.0

task OverlapAlignFasta1 {
  input {
    String? fasta2Fasta2
  }
  command <<<
    overlap-align fasta1 \
      ~{fasta2Fasta2}
  >>>
}