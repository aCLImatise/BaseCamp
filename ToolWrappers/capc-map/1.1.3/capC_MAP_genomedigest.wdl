version 1.0

task CapCMAPGenomedigest {
  input {
    File? input_fasta_file
    String? name_supported_enzyme
    File? output_bed_file
  }
  command <<<
    capC_MAP genomedigest \
      ~{if defined(input_fasta_file) then ("-i " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(name_supported_enzyme) then ("-r " +  '"' + name_supported_enzyme + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fasta_file: "input fasta file of geneome"
    name_supported_enzyme: "name of supported enzyme, or cutting sequence"
    output_bed_file: "output bed file of restriction fragments"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}