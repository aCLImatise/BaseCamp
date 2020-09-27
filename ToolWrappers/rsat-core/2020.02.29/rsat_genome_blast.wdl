version 1.0

task RsatGenomeblast {
  input {
    String? db_tax_on
    String genome_blast
    String util
    String organism_dot
    String comparison_dot
    String blast_all
    String comparisons_dot
    String default_dot
    String blast_dot
  }
  command <<<
    rsat genome_blast \
      ~{genome_blast} \
      ~{util} \
      ~{organism_dot} \
      ~{comparison_dot} \
      ~{blast_all} \
      ~{comparisons_dot} \
      ~{default_dot} \
      ~{blast_dot} \
      ~{if defined(db_tax_on) then ("-dbtaxon " +  '"' + db_tax_on + '"') else ""}
  >>>
  parameter_meta {
    db_tax_on: "In the latter case, there is no need to run the reciprocal blast, since\\nthe query yaxon is the same as the database taxon."
    genome_blast: "[1mDESCRIPTION[0m"
    util: "[1mINPUT FORMAT[0m"
    organism_dot: "Although the matching is performed at the protein level, the table"
    comparison_dot: "[1mUSAGE[0m"
    blast_all: "The formatdb step has to be done before running blastall. Note that both"
    comparisons_dot: "Example: matching all Fungi against all Bacteria genome-blast -qtaxon"
    default_dot: "[1m-outdir output_directory[0m"
    blast_dot: "genome-blast -v 1 -q my_org -dbtaxon my_taxon -task blastall\\ngenome-blast -v 1 -db my_org -qtaxon my_taxon -task blastall -no_self"
  }
  output {
    File out_stdout = stdout()
  }
}