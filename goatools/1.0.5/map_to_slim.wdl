version 1.0

task MapToSlim.py {
  input {
    String? term
    String? association_file
    String? slim_out
    String go_obo_file
    String go_slim_obo_file
  }
  command <<<
    map_to_slim.py \
      ~{go_obo_file} \
      ~{go_slim_obo_file} \
      ~{if defined(term) then ("--term " +  '"' + term + '"') else ""} \
      ~{if defined(association_file) then ("--association_file " +  '"' + association_file + '"') else ""} \
      ~{if defined(slim_out) then ("--slim_out " +  '"' + slim_out + '"') else ""}
  >>>
  parameter_meta {
    term: "a term (association id) to map to slim IDs. This can not be used together with --association_file"
    association_file: "the file of protein products and their associations to be mapped to GO slim terms. This can not be used together with --term"
    slim_out: "One of `direct` or `all`. Defines whether the output should contain all slim terms (all ancestors) or only direct slim terms (only direct ancestors)"
    go_obo_file: ""
    go_slim_obo_file: ""
  }
}