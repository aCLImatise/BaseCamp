version 1.0

task Fathom {
  input {
    Boolean? validate
    Boolean? gene_stats
    Int? categorize
    Int? export
    String? extract
    Boolean? exon_intron
    Boolean? split
    Boolean? ace_format
    String? compare_genes
    String? score_genes
    String? filter_genes
    String ann
    String dna
    String commands
  }
  command <<<
    fathom \
      ~{ann} \
      ~{dna} \
      ~{commands} \
      ~{if (validate) then "-validate" else ""} \
      ~{if (gene_stats) then "-gene-stats" else ""} \
      ~{if defined(categorize) then ("-categorize " +  '"' + categorize + '"') else ""} \
      ~{if defined(export) then ("-export " +  '"' + export + '"') else ""} \
      ~{if defined(extract) then ("-extract " +  '"' + extract + '"') else ""} \
      ~{if (exon_intron) then "-exon-intron" else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if (ace_format) then "-ace-format" else ""} \
      ~{if defined(compare_genes) then ("-compare-genes " +  '"' + compare_genes + '"') else ""} \
      ~{if defined(score_genes) then ("-score-genes " +  '"' + score_genes + '"') else ""} \
      ~{if defined(filter_genes) then ("-filter-genes " +  '"' + filter_genes + '"') else ""}
  >>>
  parameter_meta {
    validate: "[-quiet]"
    gene_stats: "[-errors-ok -nucleotide -dinucleotide]"
    categorize: ""
    export: "[-plus -errors-ok]"
    extract: ""
    exon_intron: ""
    split: "<-number <int> | -training <float> | -GC <float> | -repeat <float>>"
    ace_format: "<-gene-method <string> [-dna -extra <string>]>"
    compare_genes: "[-details]"
    score_genes: "[-errors-ok]"
    filter_genes: ""
    ann: ""
    dna: ""
    commands: ""
  }
  output {
    File out_stdout = stdout()
  }
}