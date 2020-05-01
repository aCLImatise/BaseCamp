version 1.0

task Novo2sam.pl {
  input {
    Boolean pP
    String? alnAlnNovo
  }
  command <<<
    novo2sam.pl \
      ~{alnAlnNovo} \
      ~{true="-p" false="" pP}
  >>>
}