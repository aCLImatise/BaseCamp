version 1.0

task AnviScriptProcessGenbank {
  input {
    String? input_genbank
    String? annotation_source
    String? annotation_version
    File? o
  }
  command <<<
    anvi-script-process-genbank \
      ~{if defined(input_genbank) then ("--input-genbank " +  '"' + input_genbank + '"') else ""} \
      ~{if defined(annotation_source) then ("--annotation-source " +  '"' + annotation_source + '"') else ""} \
      ~{if defined(annotation_version) then ("--annotation-version " +  '"' + annotation_version + '"') else ""} \
      ~{if defined(o) then ("-O " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    input_genbank: "Input GenBank file"
    annotation_source: "Annotation source (default: \"NCBI_PGAP\")"
    annotation_version: "Annotation source version to be stored in the database (default: \"v4.6\")"
    o: ""
  }
}