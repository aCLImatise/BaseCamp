version 1.0

task Gbrowseold2gff3pl {
  input {
    String hints
    String source
  }
  command <<<
    gbrowseold2gff3_pl \
      ~{hints} \
      ~{source}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hints: "convert gff format for intron hints to gff3"
    source: "fill this into the second column"
  }
  output {
    File out_stdout = stdout()
  }
}