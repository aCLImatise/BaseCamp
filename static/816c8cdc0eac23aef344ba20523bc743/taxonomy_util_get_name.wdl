version 1.0

task TaxonomyUtilGetName {
  input {
    String id
  }
  command <<<
    taxonomy_util get_name \
      ~{id}
  >>>
  parameter_meta {
    id: ""
  }
}