version 1.0

task MapToSlimpy {
  input {
    String? term
    File? association_file
    String? slim_out
    String go_obo_file
    String go_slim_obo_file
  }
  command <<<
    map_to_slim_py \
      ~{go_obo_file} \
      ~{go_slim_obo_file} \
      ~{if defined(term) then ("--term " +  '"' + term + '"') else ""} \
      ~{if defined(association_file) then ("--association_file " +  '"' + association_file + '"') else ""} \
      ~{if defined(slim_out) then ("--slim_out " +  '"' + slim_out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0"
  }
  parameter_meta {
    term: "a term (association id) to map to slim IDs. This can\\nnot be used together with --association_file"
    association_file: "the file of protein products and their associations to\\nbe mapped to GO slim terms. This can not be used\\ntogether with --term"
    slim_out: "One of `direct` or `all`. Defines whether the output\\nshould contain all slim terms (all ancestors) or only\\ndirect slim terms (only direct ancestors)\\n"
    go_obo_file: ""
    go_slim_obo_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}