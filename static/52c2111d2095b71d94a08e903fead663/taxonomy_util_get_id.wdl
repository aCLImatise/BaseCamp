version 1.0

task TaxonomyUtilGetId {
  input {
    String name
  }
  command <<<
    taxonomy_util get_id \
      ~{name}
  >>>
  parameter_meta {
    name: ""
  }
}