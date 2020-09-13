version 1.0

task Goslimmer {
  input {
    File? go
    File? slim
    File? annotation
    File? path_output_goslim
  }
  command <<<
    goslimmer \
      ~{if defined(go) then ("--go " +  '"' + go + '"') else ""} \
      ~{if defined(slim) then ("--slim " +  '"' + slim + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(path_output_goslim) then ("--output " +  '"' + path_output_goslim + '"') else ""}
  >>>
  parameter_meta {
    go: "Path to the full Gene Ontology OBO or OWL file"
    slim: "Path to the GOslim OBO or OWL file"
    annotation: "Path to the tabular annotation file (GAF, BLAST2GO or 2-column table format"
    path_output_goslim: "Path to the output GOslim annotation file]"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_goslim = "${in_path_output_goslim}"
  }
}