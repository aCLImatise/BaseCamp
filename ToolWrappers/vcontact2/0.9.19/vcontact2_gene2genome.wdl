version 1.0

task Vcontact2Gene2genome {
  input {
    File? source_type
    Boolean? keep_descriptions
    Boolean? compatibility
  }
  command <<<
    vcontact2_gene2genome \
      ~{if defined(source_type) then ("--source-type " +  '"' + source_type + '"') else ""} \
      ~{if (keep_descriptions) then "--keep-descriptions" else ""} \
      ~{if (compatibility) then "--compatibility" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcontact2:0.9.19--py_0"
  }
  parameter_meta {
    source_type: "Select one of the options as an input source. MetaGeneMark can be either the nucleotide or protein FASTA-formatted output."
    keep_descriptions: "This will enable taking the full description of sequences during MetaGeneMark parsing."
    compatibility: "Adds compatibility for vContact1 headers."
  }
  output {
    File out_stdout = stdout()
  }
}