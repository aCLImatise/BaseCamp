version 1.0

task Vcontact2Gene2genome {
  input {
    File? proteins
    File? var_output
    String? source_type
    Boolean? keep_descriptions
    Boolean? compatibility
  }
  command <<<
    vcontact2_gene2genome \
      ~{if defined(proteins) then ("--proteins " +  '"' + proteins + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(source_type) then ("--source-type " +  '"' + source_type + '"') else ""} \
      ~{if (keep_descriptions) then "--keep-descriptions" else ""} \
      ~{if (compatibility) then "--compatibility" else ""}
  >>>
  parameter_meta {
    proteins: ""
    var_output: ""
    source_type: "Select one of the options as an input source. MetaGeneMark can be either the nucleotide or protein FASTA-formatted output."
    keep_descriptions: "This will enable taking the full description of sequences during MetaGeneMark parsing."
    compatibility: "Adds compatibility for vContact1 headers."
  }
  output {
    File out_stdout = stdout()
  }
}