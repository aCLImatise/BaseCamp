version 1.0

task PhyluceAssemblyExplodeGetFastasFile {
  input {
    String? input_fasta_file
    String? output_directory_create
    Boolean? by_tax_on
    String? split_char
  }
  command <<<
    phyluce_assembly_explode_get_fastas_file \
      ~{if defined(input_fasta_file) then ("--input " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(output_directory_create) then ("--output " +  '"' + output_directory_create + '"') else ""} \
      ~{true="--by-taxon" false="" by_tax_on} \
      ~{if defined(split_char) then ("--split-char " +  '"' + split_char + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "The input fasta file to explode"
    output_directory_create: "The output directory to create and in which to store the fastas"
    by_tax_on: "Split file by taxon and not by locus"
    split_char: "The character to split on"
  }
}