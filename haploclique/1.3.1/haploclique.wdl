version 1.0

task Haploclique {
  input {
    Boolean? gff
    Boolean? bam
    String? max_cliques
    String? limit_clique_size
    String clever
    String bronk_er_bosch
  }
  command <<<
    haploclique \
      ~{clever} \
      ~{bronk_er_bosch} \
      ~{true="--gff" false="" gff} \
      ~{true="--bam" false="" bam} \
      ~{if defined(max_cliques) then ("--max_cliques " +  '"' + max_cliques + '"') else ""} \
      ~{if defined(limit_clique_size) then ("--limit_clique_size " +  '"' + limit_clique_size + '"') else ""}
  >>>
  parameter_meta {
    gff: "Option to create GFF File from output. <output> is used as prefix."
    bam: "Option to create BAM File from output. <output> is used as prefix."
    max_cliques: "Set a threshold for the maximal number of cliques which should be considered in the next iteration."
    limit_clique_size: "Set a threshold to limit the size of cliques."
    clever: "use the original clever clique finder"
    bronk_er_bosch: "use the Bron-Kerbosch based clique finder"
  }
}