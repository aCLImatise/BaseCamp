version 1.0

task AddGapGene.py {
  input {
    String? organism
    String? output_directory_generated
  }
  command <<<
    add_gap_gene.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_generated) then ("--output " +  '"' + output_directory_generated + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the list of banned candidate fusion genes is generated, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_generated: "The output directory where the list of banned candidate fusion genes is generated. Default is '.'."
  }
}