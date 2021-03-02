version 1.0

task Isaacreorderreference {
  input {
    Boolean? help_defaults
    Boolean? help_md
    File? order
    File? arg_path_reordered
    Boolean? arg_full_path
    Boolean? print_program_version
    String files_dot
    String descriptor_dot
  }
  command <<<
    isaac_reorder_reference \
      ~{files_dot} \
      ~{descriptor_dot} \
      ~{if (help_defaults) then "--help-defaults" else ""} \
      ~{if (help_md) then "--help-md" else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if (arg_path_reordered) then "-d" else ""} \
      ~{if (arg_full_path) then "-r" else ""} \
      ~{if (print_program_version) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/isaac4:04.18.11.09--h07bff40_0"
  }
  parameter_meta {
    help_defaults: "produce tab-delimited list of command line\\noptions and their default values"
    help_md: "produce help message pre-formatted as a\\nmarkdown file section and exit"
    order: "Comma-separated list of contig names in the\\norder in which they will appear in the new .fa\\nfile."
    arg_path_reordered: "[ --output-directory ] arg Path for the reordered fasta and annotation"
    arg_full_path: "[ --reference-genome ] arg Full path to the reference genome XML"
    print_program_version: "[ --version ]              print program version information"
    files_dot: "-x [ --output-xml ] arg       Path for the new xml file."
    descriptor_dot: "--response-file arg           file with more command line arguments"
  }
  output {
    File out_stdout = stdout()
    File out_arg_path_reordered = "${in_arg_path_reordered}"
  }
}