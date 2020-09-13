version 1.0

task CapCMAPGenomedigest {
  input {
    File? input_fasta_file
    String? name_cutting_sequence
    File? output_bed_file
  }
  command <<<
    capC_MAP genomedigest \
      ~{if defined(input_fasta_file) then ("-i " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(name_cutting_sequence) then ("-r " +  '"' + name_cutting_sequence + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "input fasta file of geneome"
    name_cutting_sequence: "name of supported enzyme, or cutting sequence"
    output_bed_file: "output bed file of restriction fragments"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}