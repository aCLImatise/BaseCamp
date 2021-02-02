version 1.0

task AmpliconsHistogramspy {
  input {
    Boolean? verbose
    Directory? output_dir
    Boolean? all_files
    File? tax_a_map
    File? amplicons_file_path
  }
  command <<<
    amplicons_histograms_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (all_files) then "--all_files" else ""} \
      ~{if defined(tax_a_map) then ("--taxa_map " +  '"' + tax_a_map + '"') else ""} \
      ~{if defined(amplicons_file_path) then ("--amplicons_filepath " +  '"' + amplicons_file_path + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    output_dir: "Specify output directory for amplicons and reads.\\n[default: .]"
    all_files: "Generate histograms for all files ending with\\n_amplicons.fasta in the directory specified with the\\n-f parameter [default: False]"
    tax_a_map: "Filepath to taxonomy mapping file, used to separate\\ngraphs according to domain. [default: none]"
    amplicons_file_path: "Target amplicons files.  Separate multiple files with\\na colon. [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}