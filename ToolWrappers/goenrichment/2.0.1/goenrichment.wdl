version 1.0

task Goenrichment {
  input {
    File? go
    File? annotation
    File? study
  }
  command <<<
    goenrichment \
      ~{if defined(go) then ("--go " +  '"' + go + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(study) then ("--study " +  '"' + study + '"') else ""}
  >>>
  parameter_meta {
    go: "Path to the Gene Ontology OBO or OWL file"
    annotation: "Path to the tabular annotation file (GAF, BLAST2GO or 2-column table format"
    study: "Path to the file listing the study set gene products"
  }
  output {
    File out_stdout = stdout()
  }
}