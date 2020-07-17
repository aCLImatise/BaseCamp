version 1.0

task JeMarkdupes {
  input {
    String mark_duplicates_with_molecular_code
  }
  command <<<
    je markdupes \
      ~{mark_duplicates_with_molecular_code}
  >>>
  parameter_meta {
    mark_duplicates_with_molecular_code: ""
  }
}