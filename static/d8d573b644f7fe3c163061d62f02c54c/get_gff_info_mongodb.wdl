version 1.0

task GetGffInfoMongodb {
  input {
    File? taxonomy
    Boolean? no_cache
    Int? indent
    Boolean? progress
    String? gff_file
    String? output_file
  }
  command <<<
    get-gff-info mongodb \
      ~{gff_file} \
      ~{output_file} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{true="--no-cache" false="" no_cache} \
      ~{if defined(indent) then ("--indent " +  '"' + indent + '"') else ""} \
      ~{true="--progress" false="" progress}
  >>>
  parameter_meta {
    taxonomy: "Taxonomy used to populate the lineage"
    no_cache: "No cache for the lineage function"
    indent: "If used, the json will be written in a human readble form"
    progress: "Shows Progress Bar"
    gff_file: ""
    output_file: ""
  }
}