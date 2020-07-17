version 1.0

task Vcontact2Gene2genome {
  input {
    String? source_type
    Boolean? keep_descriptions
    Boolean? compatibility
    File? p
    File? o
  }
  command <<<
    vcontact2_gene2genome \
      ~{if defined(source_type) then ("--source-type " +  '"' + source_type + '"') else ""} \
      ~{true="--keep-descriptions" false="" keep_descriptions} \
      ~{true="--compatibility" false="" compatibility} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    source_type: "Select one of the options as an input source. MetaGeneMark can be either the nucleotide or protein FASTA-formatted output."
    keep_descriptions: "This will enable taking the full description of sequences during MetaGeneMark parsing."
    compatibility: "Adds compatibility for vContact1 headers."
    p: ""
    o: ""
  }
}