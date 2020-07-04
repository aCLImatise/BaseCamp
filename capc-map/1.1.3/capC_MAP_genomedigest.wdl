version 1.0

task CapCMAPGenomedigest {
  input {
    String? input_fasta_file
    String? name_supported_enzyme
    String? output_bed_file
  }
  command <<<
    capC-MAP genomedigest \
      ~{if defined(input_fasta_file) then ("-i " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(name_supported_enzyme) then ("-r " +  '"' + name_supported_enzyme + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "input fasta file of geneome"
    name_supported_enzyme: "name of supported enzyme, or cutting sequence"
    output_bed_file: "output bed file of restriction fragments"
  }
}