version 1.0

task Bowtie2sam.pl {
  input {
    String? alnAlnBowtie
  }
  command <<<
    bowtie2sam.pl \
      ~{alnAlnBowtie}
  >>>
}