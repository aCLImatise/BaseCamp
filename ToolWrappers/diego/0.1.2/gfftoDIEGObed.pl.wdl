version 1.0

task GfftoDIEGObedpl {
  input {
    File? gff_file_eg
    File? output_file_name
    String? what_used_genes
    String? help_message
  }
  command <<<
    gfftoDIEGObed_pl \
      ~{if defined(gff_file_eg) then ("-g " +  '"' + gff_file_eg + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(what_used_genes) then ("-w " +  '"' + what_used_genes + '"') else ""} \
      ~{if defined(help_message) then ("-h " +  '"' + help_message + '"') else ""}
  >>>
  parameter_meta {
    gff_file_eg: "gff file e.g. from ENSMBL"
    output_file_name: "output file name (default:annotation_DIEGO.bed)"
    what_used_genes: "what is used as genes (default: gene)"
    help_message: "help message"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}