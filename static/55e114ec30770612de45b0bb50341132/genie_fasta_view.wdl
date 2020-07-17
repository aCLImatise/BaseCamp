version 1.0

task GenieFastaView {
  input {
    String? file_path
    String? scope
    String? flags
  }
  command <<<
    genie fasta view \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""} \
      ~{if defined(scope) then ("--scope " +  '"' + scope + '"') else ""}
  >>>
  parameter_meta {
    file_path: "A bam file (*require)"
    scope: "Scope chr:begin-end (*require)"
    flags: ""
  }
}