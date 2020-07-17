version 1.0

task VIBRANTRun.py {
  input {
    String? input_fasta_file
    String? format_of_input
    Directory? folder
    String? number_parallel_vibrant
    String? length_limit_sequences
    String? number_limit_sequences
    Boolean? vi_rome
    Boolean? no_plot
    String? path_original_hmm
    String? path_tsv_moved
  }
  command <<<
    VIBRANT_run.py \
      ~{if defined(input_fasta_file) then ("-i " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(format_of_input) then ("-f " +  '"' + format_of_input + '"') else ""} \
      ~{if defined(folder) then ("-folder " +  '"' + folder + '"') else ""} \
      ~{if defined(number_parallel_vibrant) then ("-t " +  '"' + number_parallel_vibrant + '"') else ""} \
      ~{if defined(length_limit_sequences) then ("-l " +  '"' + length_limit_sequences + '"') else ""} \
      ~{if defined(number_limit_sequences) then ("-o " +  '"' + number_limit_sequences + '"') else ""} \
      ~{true="-virome" false="" vi_rome} \
      ~{true="-no_plot" false="" no_plot} \
      ~{if defined(path_original_hmm) then ("-d " +  '"' + path_original_hmm + '"') else ""} \
      ~{if defined(path_tsv_moved) then ("-m " +  '"' + path_tsv_moved + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "input fasta file"
    format_of_input: "format of input [default=\"nucl\"]"
    folder: "path to deposit output folder and temporary files, will create if doesn't exist [default= working directory]"
    number_parallel_vibrant: "number of parallel VIBRANT runs, each occupies 1 CPU [default=1, max of 1 CPU per scaffold]"
    length_limit_sequences: "length in basepairs to limit input sequences [default=1000, can increase but not decrease]"
    number_limit_sequences: "number of ORFs per scaffold to limit input sequences [default=4, can increase but not decrease]"
    vi_rome: "use this setting if dataset is known to be comprised mainly of viruses. More sensitive to viruses, less sensitive to false identifications [default=off]"
    no_plot: "suppress the generation of summary plots [default=off]"
    path_original_hmm: "path to original \"databases\" directory that contains .HMM files (if moved from default location)"
    path_tsv_moved: "path to original \"files\" directory that contains .tsv and model files (if moved from default location)"
  }
}