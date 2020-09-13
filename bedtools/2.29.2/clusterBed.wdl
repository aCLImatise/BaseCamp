version 1.0

task ClusterBed {
  input {
    Boolean? force_strandedness_only
    Boolean? maximum_distance_features
    String? i
    String bed_tools
    String cluster
  }
  command <<<
    clusterBed \
      ~{bed_tools} \
      ~{cluster} \
      ~{if (force_strandedness_only) then "-s" else ""} \
      ~{if (maximum_distance_features) then "-d" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    force_strandedness_only: "Force strandedness.  That is, only merge features\\nthat are the same strand.\\n- By default, merging is done without respect to strand."
    maximum_distance_features: "Maximum distance between features allowed for features\\nto be merged.\\n- Def. 0. That is, overlapping & book-ended features are merged.\\n- (INTEGER)\\n"
    i: ""
    bed_tools: ""
    cluster: ""
  }
  output {
    File out_stdout = stdout()
  }
}