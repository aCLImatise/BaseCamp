version 1.0

task BoltFastaView {
  input {
    File? file_path
    String? scope
    String genie
    String fast_a
    String view
  }
  command <<<
    bolt fasta view \
      ~{genie} \
      ~{fast_a} \
      ~{view} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""} \
      ~{if defined(scope) then ("--scope " +  '"' + scope + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_path: "A bam file (*require)"
    scope: "Scope chr:begin-end (*require)"
    genie: ""
    fast_a: ""
    view: ""
  }
  output {
    File out_stdout = stdout()
  }
}