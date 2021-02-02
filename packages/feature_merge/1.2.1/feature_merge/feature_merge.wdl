version 1.0

task FeatureMerge {
  input {
    String? version_and_exit
    String? seperated_types_merge
    String? strand_merge_feature
    String? sequence_i_d
    String? merge_features_identical
    String? distance_features_merge
    String? component_features_output
    File? strategy_used_deal
  }
  command <<<
    feature_merge \
      ~{if defined(version_and_exit) then ("-v " +  '"' + version_and_exit + '"') else ""} \
      ~{if defined(seperated_types_merge) then ("-f " +  '"' + seperated_types_merge + '"') else ""} \
      ~{if defined(strand_merge_feature) then ("-i " +  '"' + strand_merge_feature + '"') else ""} \
      ~{if defined(sequence_i_d) then ("-s " +  '"' + sequence_i_d + '"') else ""} \
      ~{if defined(merge_features_identical) then ("-x " +  '"' + merge_features_identical + '"') else ""} \
      ~{if defined(distance_features_merge) then ("-t " +  '"' + distance_features_merge + '"') else ""} \
      ~{if defined(component_features_output) then ("-e " +  '"' + component_features_output + '"') else ""} \
      ~{if defined(strategy_used_deal) then ("-m " +  '"' + strategy_used_deal + '"') else ""}
  >>>
  parameter_meta {
    version_and_exit: "version and exit"
    seperated_types_merge: "seperated types of features to merge. Must be terms or accessions from the SOFA sequence ontology, \\\"ALL\\\", or \\\"NONE\\\". (Can be provided more than once to specify multiple merge groups)"
    strand_merge_feature: "strand, merge feature regardless of strand"
    sequence_i_d: "sequence id, merge feature regardless of sequence id"
    merge_features_identical: "merge features with identical coordinates"
    distance_features_merge: "distance between features to merge"
    component_features_output: "component features from output"
    strategy_used_deal: "strategy used to deal with id collisions between input files.\\nmerge: attributes of all features with the same primary key will be merged\\nappend: entry will have a unique, autoincremented primary key assigned to it (default)\\nerror: exception will be raised. This means you will have to edit the file yourself to fix the duplicated IDs\\nskip: ignore duplicates, emitting a warning\\nreplace: keep last duplicate\\n"
  }
  output {
    File out_stdout = stdout()
  }
}