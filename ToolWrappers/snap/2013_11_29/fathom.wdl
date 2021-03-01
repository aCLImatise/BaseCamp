version 1.0

task Fathom {
  input {
    Boolean? gene_stats
    Float? exon_intron
    Boolean? ace_format
    String ann
    String dna
    String commands
  }
  command <<<
    fathom \
      ~{ann} \
      ~{dna} \
      ~{commands} \
      ~{if (gene_stats) then "-gene-stats" else ""} \
      ~{if defined(exon_intron) then ("-exon-intron " +  '"' + exon_intron + '"') else ""} \
      ~{if (ace_format) then "-ace-format" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene_stats: "[-errors-ok -nucleotide -dinucleotide]"
    exon_intron: "<-number <int> | -training <float> | -GC <float> | -repeat <float>>"
    ace_format: "<-gene-method <string> [-dna -extra <string>]>"
    ann: ""
    dna: ""
    commands: ""
  }
  output {
    File out_stdout = stdout()
  }
}