version 1.0

task TaxonomyUtilCommonAncestorDistance {
  input {
    Boolean? only_canonical
    String? flags
    String name_one
    String name_two
  }
  command <<<
    taxonomy_util common_ancestor_distance \
      ~{flags} \
      ~{name_one} \
      ~{name_two} \
      ~{true="--only_canonical" false="" only_canonical}
  >>>
  parameter_meta {
    only_canonical: "Only consider canonical taxonomic ranks"
    flags: ""
    name_one: ""
    name_two: ""
  }
}