version 1.0

task VIBRANTAnnotation.py {
  input {
    String? input_fasta_file
    String? format_of_input
    String? length_limit_sequences
    String? number_limit_sequences
    Boolean? vi_rome
    String? path_directory_hmm
    String? path_tsv_files
    String? outfolder
    String? base
  }
  command <<<
    VIBRANT_annotation.py \
      ~{if defined(input_fasta_file) then ("-i " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(format_of_input) then ("-f " +  '"' + format_of_input + '"') else ""} \
      ~{if defined(length_limit_sequences) then ("-l " +  '"' + length_limit_sequences + '"') else ""} \
      ~{if defined(number_limit_sequences) then ("-o " +  '"' + number_limit_sequences + '"') else ""} \
      ~{true="-virome" false="" vi_rome} \
      ~{if defined(path_directory_hmm) then ("-d " +  '"' + path_directory_hmm + '"') else ""} \
      ~{if defined(path_tsv_files) then ("-m " +  '"' + path_tsv_files + '"') else ""} \
      ~{if defined(outfolder) then ("-x " +  '"' + outfolder + '"') else ""} \
      ~{if defined(base) then ("-y " +  '"' + base + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "input fasta file"
    format_of_input: "format of input [default=\"nucl\"]"
    length_limit_sequences: "length in basepairs to limit input sequences [default=1000, can increase but not decrease]"
    number_limit_sequences: "number of ORFs per scaffold to limit input sequences [default=4, can increase but not decrease]"
    vi_rome: "use this setting if dataset is known to be comprised mainly of viruses. More sensitive to viruses, less sensitive to false identifications [default=off]"
    path_directory_hmm: "path to \"databases\" directory that contains .HMM files (if moved from default location)"
    path_tsv_files: "path to \"files\" directory that contains .tsv and model files (if moved from default location)"
    outfolder: "out_folder"
    base: "base"
  }
}