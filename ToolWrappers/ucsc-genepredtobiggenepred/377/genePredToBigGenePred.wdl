version 1.0

task GenePredToBigGenePred {
  input {
    Boolean? known
    File? score
    File? gene_names
    File? colors
    File? cds
    File file_do_tgp
    String stdout
  }
  command <<<
    genePredToBigGenePred \
      ~{file_do_tgp} \
      ~{stdout} \
      ~{if (known) then "-known" else ""} \
      ~{if defined(score) then ("-score " +  '"' + score + '"') else ""} \
      ~{if defined(gene_names) then ("-geneNames " +  '"' + gene_names + '"') else ""} \
      ~{if defined(colors) then ("-colors " +  '"' + colors + '"') else ""} \
      ~{if defined(cds) then ("-cds " +  '"' + cds + '"') else ""}
  >>>
  parameter_meta {
    known: "input file is a genePred in knownGene format"
    score: "scores is two column file with id's mapping to scores"
    gene_names: "geneNames is a three column file with id's mapping to two gene names"
    colors: "colors is a four column file with id's mapping to r,g,b"
    cds: "cds is a five column file with id's mapping to cds status codes and exonFrames (see knownCds.as)"
    file_do_tgp: ""
    stdout: ""
  }
  output {
    File out_stdout = stdout()
  }
}