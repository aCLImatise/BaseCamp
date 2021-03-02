version 1.0

task ExtractReferencepy {
  input {
    File? input_strand_list
    Int? jobs
    Int? limit
    Boolean? no_overwrite
    String? section
    String input_folder
    String output_fasta_file
  }
  command <<<
    extract_reference_py \
      ~{input_folder} \
      ~{output_fasta_file} \
      ~{if defined(input_strand_list) then ("--input_strand_list " +  '"' + input_strand_list + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (no_overwrite) then "--no-overwrite" else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_strand_list: "Strand summary file containing subset (default: None)"
    jobs: "Number of threads to use when processing data\\n(default: 1)"
    limit: "Limit number of reads to process (default: None)"
    no_overwrite: "Whether to overwrite any output files (Default: --no-\\noverwrite) (default: False)"
    section: "Section to call (default: template)\\n"
    input_folder: "Directory containing single-read fast5 files"
    output_fasta_file: "Output fasta file"
  }
  output {
    File out_stdout = stdout()
  }
}