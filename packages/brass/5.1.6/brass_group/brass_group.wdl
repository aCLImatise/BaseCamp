version 1.0

task Brassgroup {
  input {
    String? discard_read_pairs_groups
    File? read_annotation_features
    String? omit_groups_locations
    Array[String] locations_encompassed_ranges
    String? keep_read_pairs
    Int? use_size_num
    Int? omit_groups_containing
    File? write_rearrangement_groups
    Int? discard_read_pairs_mapping
    String? use_sample_name
    String insertion
    String repeat
  }
  command <<<
    brass_group \
      ~{insertion} \
      ~{repeat} \
      ~{if defined(discard_read_pairs_groups) then ("-d " +  '"' + discard_read_pairs_groups + '"') else ""} \
      ~{if defined(read_annotation_features) then ("-F " +  '"' + read_annotation_features + '"') else ""} \
      ~{if defined(omit_groups_locations) then ("-i " +  '"' + omit_groups_locations + '"') else ""} \
      ~{if defined(locations_encompassed_ranges) then ("-I " +  '"' + locations_encompassed_ranges + '"') else ""} \
      ~{if defined(keep_read_pairs) then ("-k " +  '"' + keep_read_pairs + '"') else ""} \
      ~{if defined(use_size_num) then ("-m " +  '"' + use_size_num + '"') else ""} \
      ~{if defined(omit_groups_containing) then ("-n " +  '"' + omit_groups_containing + '"') else ""} \
      ~{if defined(write_rearrangement_groups) then ("-o " +  '"' + write_rearrangement_groups + '"') else ""} \
      ~{if defined(discard_read_pairs_mapping) then ("-q " +  '"' + discard_read_pairs_mapping + '"') else ""} \
      ~{if defined(use_sample_name) then ("-s " +  '"' + use_sample_name + '"') else ""}
  >>>
  parameter_meta {
    discard_read_pairs_groups: "Discard read pairs or groups matching condition TYPE"
    read_annotation_features: "Read annotation features from FILE (in BED or range format)"
    omit_groups_locations: "Omit groups in or near the locations encompassed by RANGE"
    locations_encompassed_ranges: "locations encompassed by ranges listed in FILE"
    keep_read_pairs: "Keep read pairs or groups matching condition TYPE"
    use_size_num: "Use maximum insert size NUM unless specified by the library"
    omit_groups_containing: "Omit groups containing fewer than NUM read pairs (default 2)"
    write_rearrangement_groups: "Write rearrangement groups to FILE rather than standard output"
    discard_read_pairs_mapping: "Discard read pairs with mapping quality less than NUM (default 1)"
    use_sample_name: "Use sample NAME for read pairs that are not in any read group"
    insertion: "Intrachromosomal insertions smaller than the insert (discarded)"
    repeat: "Groups touching listed repeat features (discarded)"
  }
  output {
    File out_stdout = stdout()
    File out_write_rearrangement_groups = "${in_write_rearrangement_groups}"
  }
}