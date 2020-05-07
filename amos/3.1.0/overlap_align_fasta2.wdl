version 1.0

task OverlapAlignFasta2 {
  input {
    String? fasta1Fasta1
    String? fasta2Fasta2
  }
  command <<<
    overlap-align fasta2 \
      ~{fasta1Fasta1} \
      ~{fasta2Fasta2}
  >>>
}