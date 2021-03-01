version 1.0

task GetgffinfoMongodb {
  input {
    File? taxonomy
    Boolean? no_cache
    Int? indent
    Boolean? progress
    String? gff_file
    String? output_file
  }
  command <<<
    get_gff_info mongodb \
      ~{gff_file} \
      ~{output_file} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if (no_cache) then "--no-cache" else ""} \
      ~{if defined(indent) then ("--indent " +  '"' + indent + '"') else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    taxonomy: "Taxonomy used to populate the lineage"
    no_cache: "No cache for the lineage function"
    indent: "If used, the json will be written in a human\\nreadble form"
    progress: "Shows Progress Bar"
    gff_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}