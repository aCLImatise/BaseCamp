version 1.0

task VIBRANTAnnotationpy {
  input {
    File? input_fasta_file
    String? format_of_input
    Int? length_limit_sequences
    Int? number_limit_sequences
    Boolean? vi_rome
    File? path_directory_hmm
    File? path_directory_tsv
    String? base
  }
  command <<<
    VIBRANT_annotation_py \
      ~{if defined(input_fasta_file) then ("-i " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(format_of_input) then ("-f " +  '"' + format_of_input + '"') else ""} \
      ~{if defined(length_limit_sequences) then ("-l " +  '"' + length_limit_sequences + '"') else ""} \
      ~{if defined(number_limit_sequences) then ("-o " +  '"' + number_limit_sequences + '"') else ""} \
      ~{if (vi_rome) then "-virome" else ""} \
      ~{if defined(path_directory_hmm) then ("-d " +  '"' + path_directory_hmm + '"') else ""} \
      ~{if defined(path_directory_tsv) then ("-m " +  '"' + path_directory_tsv + '"') else ""} \
      ~{if defined(base) then ("-y " +  '"' + base + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "input fasta file"
    format_of_input: "format of input [default=\\\"nucl\\\"]"
    length_limit_sequences: "length in basepairs to limit input sequences [default=1000,\\ncan increase but not decrease]"
    number_limit_sequences: "number of ORFs per scaffold to limit input sequences\\n[default=4, can increase but not decrease]"
    vi_rome: "use this setting if dataset is known to be comprised mainly\\nof viruses. More sensitive to viruses, less sensitive to\\nfalse identifications [default=off]"
    path_directory_hmm: "path to \\\"databases\\\" directory that contains .HMM files (if\\nmoved from default location)"
    path_directory_tsv: "path to \\\"files\\\" directory that contains .tsv and model files\\n(if moved from default location)"
    base: "base"
  }
  output {
    File out_stdout = stdout()
  }
}