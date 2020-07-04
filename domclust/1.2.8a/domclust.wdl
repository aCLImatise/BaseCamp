version 1.0

task Domclust {
  input {
    Boolean? use_similarity_measure
    Boolean? use_distance_disimilarity
    Boolean? cutoff_scoredistance_can
    Boolean? ci
    Boolean? scoredistance_missing_relationships
    Boolean? mr
    Boolean? cutoff_score_domain
    Boolean? alignment_coverage_domain
    Boolean? minimum_organisms_clusters
    Boolean? ne
    Boolean? ratio_phylogenetic_pattern
    Boolean? homology_clustering_ie
    Boolean? ho
    Boolean? a_i
    Boolean? ao
    Boolean? use_tree_file
    Boolean? restore_dump_file
    Boolean? output_format_default
    String? o_out_group
    Boolean? o_horiz_weight
    Boolean? o_output_score
    String? o_meta
    Boolean? o_tax_map_out
    String? o_tax_map_spec
    String hom_file
    String gene_tab
  }
  command <<<
    domclust \
      ~{hom_file} \
      ~{gene_tab} \
      ~{true="-S" false="" use_similarity_measure} \
      ~{true="-d" false="" use_distance_disimilarity} \
      ~{true="-c" false="" cutoff_scoredistance_can} \
      ~{true="-ci" false="" ci} \
      ~{true="-m" false="" scoredistance_missing_relationships} \
      ~{true="-mr" false="" mr} \
      ~{true="-C" false="" cutoff_score_domain} \
      ~{true="-V" false="" alignment_coverage_domain} \
      ~{true="-n" false="" minimum_organisms_clusters} \
      ~{true="-ne" false="" ne} \
      ~{true="-p" false="" ratio_phylogenetic_pattern} \
      ~{true="-H" false="" homology_clustering_ie} \
      ~{true="-HO" false="" ho} \
      ~{true="-ai" false="" a_i} \
      ~{true="-ao" false="" ao} \
      ~{true="-t" false="" use_tree_file} \
      ~{true="-R" false="" restore_dump_file} \
      ~{true="-o" false="" output_format_default} \
      ~{if defined(o_out_group) then ("-Ooutgroup " +  '"' + o_out_group + '"') else ""} \
      ~{true="-Ohorizweight" false="" o_horiz_weight} \
      ~{true="-OoutputScore" false="" o_output_score} \
      ~{if defined(o_meta) then ("-Ometa " +  '"' + o_meta + '"') else ""} \
      ~{true="-OtaxMapOut" false="" o_tax_map_out} \
      ~{if defined(o_tax_map_spec) then ("-OtaxMapSpec " +  '"' + o_tax_map_spec + '"') else ""}
  >>>
  parameter_meta {
    use_similarity_measure: "use similarity as a measure of relatedness [on]"
    use_distance_disimilarity: "use distance (or disimilarity) as a measure of relatedness"
    cutoff_scoredistance_can: "#    cutoff score/distance (can also be spcified as -S# or -d#) [60]"
    ci: "#   cutoff score/distance among ingroup organisms"
    scoredistance_missing_relationships: "#    score/distance for missing relationships (m<c)"
    mr: "#   specify a missing score as a ratio to c (0<mr<1) [0.95]"
    cutoff_score_domain: "#    cutoff score for domain split (c<=C)"
    alignment_coverage_domain: "#    alignment coverage for domain split (0<=V<=1)"
    minimum_organisms_clusters: "#    minimum # of organisms in clusters to be output [2]"
    ne: "#   minimum # of entries in clusters to be output [2]"
    ratio_phylogenetic_pattern: "#    ratio of phylogenetic pattern overlap for tree cutting [0.5]"
    homology_clustering_ie: "homology clustering (i.e. skip the tree cutting)"
    ho: "hierachical combination of homology/orthology clustering"
    a_i: "#   member overlap for absorbing adjacent small clusters (0<=ai<=1)"
    ao: "#   member overlap for merging adjacent clusters (0<=ao<=ai)"
    use_tree_file: "<fn> use a tree file for weighting related genomes"
    restore_dump_file: "<fn> restore from dump file"
    output_format_default: "#    output format (default: 0:SimpleList) 1:Tree, 2:Newick, 3:Newick with length (when -d is specified), 4:Hierarchical, 5:ClusterTable, 6:Graph, 9:Table, 10:Dump"
    o_out_group: ",sp2,..  treat sp1,sp2,.. as outgroup"
    o_horiz_weight: "=#        relative weight for horiz. transfer (0<=x<=1)"
    o_output_score: "=#        output score/distance at the root of each cluster"
    o_meta: ",..          the specified genomes are treated as metagenomes"
    o_tax_map_out: "=#          output taxonomy mapping of metagenomic data"
    o_tax_map_spec: ",..    target species for taxonomy mapping [=meta]"
    hom_file: ""
    gene_tab: ""
  }
}