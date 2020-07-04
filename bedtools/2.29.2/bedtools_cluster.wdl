version 1.0

task BedtoolsCluster {
  input {
    Boolean? force_strandedness_only
    Boolean? maximum_distance_features
    String? i
  }
  command <<<
    bedtools cluster \
      ~{true="-s" false="" force_strandedness_only} \
      ~{true="-d" false="" maximum_distance_features} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    force_strandedness_only: "Force strandedness.  That is, only merge features that are the same strand. - By default, merging is done without respect to strand."
    maximum_distance_features: "Maximum distance between features allowed for features to be merged. - Def. 0. That is, overlapping & book-ended features are merged. - (INTEGER)"
    i: ""
  }
}