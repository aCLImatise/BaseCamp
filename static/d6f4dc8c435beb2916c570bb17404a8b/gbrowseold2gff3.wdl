version 1.0

task Gbrowseold2gff3.pl {
  input {
    String hints
    String source
  }
  command <<<
    gbrowseold2gff3.pl \
      ~{hints} \
      ~{source}
  >>>
  parameter_meta {
    hints: "convert gff format for intron hints to gff3"
    source: "fill this into the second column"
  }
}