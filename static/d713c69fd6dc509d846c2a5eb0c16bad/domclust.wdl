version 1.0

task Domclust {
  input {
    Boolean? use_similarity_measure
    Boolean? use_distance_disimilarity
    Boolean? cutoff_scoredistance_also
    Boolean? ci
    Boolean? scoredistance_missing_relationships
    Boolean? mr
    Boolean? cutoff_score_cc
    Boolean? alignment_coverage_v
    Boolean? minimum_organisms_clusters
    Boolean? ne
    Boolean? ratio_phylogenetic_pattern
    Boolean? homology_clustering_ie
    Boolean? ho
    Boolean? a_i
    Boolean? ao
    Boolean? fn_use_file
    Boolean? fn_restore_dump
    Boolean? output_format_default
    Int? o_out_group
    Boolean? o_horiz_weight
    Boolean? o_output_score
    Int? o_meta
    Boolean? o_tax_map_out
    Int? o_tax_map_spec
    String hom_file
    String gene_tab
  }
  command <<<
    domclust \
      ~{hom_file} \
      ~{gene_tab} \
      ~{if (use_similarity_measure) then "-S" else ""} \
      ~{if (use_distance_disimilarity) then "-d" else ""} \
      ~{if (cutoff_scoredistance_also) then "-c" else ""} \
      ~{if (ci) then "-ci" else ""} \
      ~{if (scoredistance_missing_relationships) then "-m" else ""} \
      ~{if (mr) then "-mr" else ""} \
      ~{if (cutoff_score_cc) then "-C" else ""} \
      ~{if (alignment_coverage_v) then "-V" else ""} \
      ~{if (minimum_organisms_clusters) then "-n" else ""} \
      ~{if (ne) then "-ne" else ""} \
      ~{if (ratio_phylogenetic_pattern) then "-p" else ""} \
      ~{if (homology_clustering_ie) then "-H" else ""} \
      ~{if (ho) then "-HO" else ""} \
      ~{if (a_i) then "-ai" else ""} \
      ~{if (ao) then "-ao" else ""} \
      ~{if (fn_use_file) then "-t" else ""} \
      ~{if (fn_restore_dump) then "-R" else ""} \
      ~{if (output_format_default) then "-o" else ""} \
      ~{if defined(o_out_group) then ("-Ooutgroup " +  '"' + o_out_group + '"') else ""} \
      ~{if (o_horiz_weight) then "-Ohorizweight" else ""} \
      ~{if (o_output_score) then "-OoutputScore" else ""} \
      ~{if defined(o_meta) then ("-Ometa " +  '"' + o_meta + '"') else ""} \
      ~{if (o_tax_map_out) then "-OtaxMapOut" else ""} \
      ~{if defined(o_tax_map_spec) then ("-OtaxMapSpec " +  '"' + o_tax_map_spec + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_similarity_measure: "use similarity as a measure of relatedness [on]"
    use_distance_disimilarity: "use distance (or disimilarity) as a measure of relatedness"
    cutoff_scoredistance_also: "#    cutoff score/distance (can also be spcified as -S# or -d#) [60]"
    ci: "#   cutoff score/distance among ingroup organisms"
    scoredistance_missing_relationships: "#    score/distance for missing relationships (m<c)"
    mr: "#   specify a missing score as a ratio to c (0<mr<1) [0.95]"
    cutoff_score_cc: "#    cutoff score for domain split (c<=C)"
    alignment_coverage_v: "#    alignment coverage for domain split (0<=V<=1)"
    minimum_organisms_clusters: "#    minimum # of organisms in clusters to be output [2]"
    ne: "#   minimum # of entries in clusters to be output [2]"
    ratio_phylogenetic_pattern: "#    ratio of phylogenetic pattern overlap for tree cutting [0.5]"
    homology_clustering_ie: "homology clustering (i.e. skip the tree cutting)"
    ho: "hierachical combination of homology/orthology clustering"
    a_i: "#   member overlap for absorbing adjacent small clusters (0<=ai<=1)"
    ao: "#   member overlap for merging adjacent clusters (0<=ao<=ai)"
    fn_use_file: "<fn> use a tree file for weighting related genomes"
    fn_restore_dump: "<fn> restore from dump file"
    output_format_default: "#    output format (default: 0:SimpleList)\\n1:Tree, 2:Newick, 3:Newick with length (when -d is specified),\\n4:Hierarchical, 5:ClusterTable, 6:Graph, 9:Table, 10:Dump"
    o_out_group: ",sp2,..  treat sp1,sp2,.. as outgroup"
    o_horiz_weight: "=#        relative weight for horiz. transfer (0<=x<=1)"
    o_output_score: "=#        output score/distance at the root of each cluster"
    o_meta: ",..          the specified genomes are treated as metagenomes"
    o_tax_map_out: "=#          output taxonomy mapping of metagenomic data"
    o_tax_map_spec: ",..    target species for taxonomy mapping [=meta]"
    hom_file: ""
    gene_tab: ""
  }
  output {
    File out_stdout = stdout()
  }
}