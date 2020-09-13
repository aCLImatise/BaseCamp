version 1.0

task VIBRANTRunpy {
  input {
    File? input_fasta_file
    String? format_of_input
    File? folder
    Int? number_parallel_vibrant
    Int? length_limit_sequences
    Int? number_limit_sequences
    Boolean? vi_rome
    Boolean? no_plot
    File? path_original_hmmfiles
    File? path_original_tsv
  }
  command <<<
    VIBRANT_run_py \
      ~{if defined(input_fasta_file) then ("-i " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(format_of_input) then ("-f " +  '"' + format_of_input + '"') else ""} \
      ~{if defined(folder) then ("-folder " +  '"' + folder + '"') else ""} \
      ~{if defined(number_parallel_vibrant) then ("-t " +  '"' + number_parallel_vibrant + '"') else ""} \
      ~{if defined(length_limit_sequences) then ("-l " +  '"' + length_limit_sequences + '"') else ""} \
      ~{if defined(number_limit_sequences) then ("-o " +  '"' + number_limit_sequences + '"') else ""} \
      ~{if (vi_rome) then "-virome" else ""} \
      ~{if (no_plot) then "-no_plot" else ""} \
      ~{if defined(path_original_hmmfiles) then ("-d " +  '"' + path_original_hmmfiles + '"') else ""} \
      ~{if defined(path_original_tsv) then ("-m " +  '"' + path_original_tsv + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "input fasta file"
    format_of_input: "format of input [default=\\\"nucl\\\"]"
    folder: "path to deposit output folder and temporary files, will\\ncreate if doesn't exist [default= working directory]"
    number_parallel_vibrant: "number of parallel VIBRANT runs, each occupies 1 CPU\\n[default=1, max of 1 CPU per scaffold]"
    length_limit_sequences: "length in basepairs to limit input sequences [default=1000,\\ncan increase but not decrease]"
    number_limit_sequences: "number of ORFs per scaffold to limit input sequences\\n[default=4, can increase but not decrease]"
    vi_rome: "use this setting if dataset is known to be comprised mainly\\nof viruses. More sensitive to viruses, less sensitive to\\nfalse identifications [default=off]"
    no_plot: "suppress the generation of summary plots [default=off]"
    path_original_hmmfiles: "path to original \\\"databases\\\" directory that contains .HMM\\nfiles (if moved from default location)"
    path_original_tsv: "path to original \\\"files\\\" directory that contains .tsv and\\nmodel files (if moved from default location)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_folder = "${in_folder}"
  }
}