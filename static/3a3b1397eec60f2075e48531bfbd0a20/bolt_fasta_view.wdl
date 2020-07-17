version 1.0

task BoltFastaView {
  input {
    String? file_path
    String? scope
    String genie
    String fast_a
    String view
    String? flags
  }
  command <<<
    bolt fasta view \
      ~{genie} \
      ~{fast_a} \
      ~{view} \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""} \
      ~{if defined(scope) then ("--scope " +  '"' + scope + '"') else ""}
  >>>
  parameter_meta {
    file_path: "A bam file (*require)"
    scope: "Scope chr:begin-end (*require)"
    genie: ""
    fast_a: ""
    view: ""
    flags: ""
  }
}