version 1.0

task BASICpy {
  input {
    String? type_receptor_choices
    Int? launch_threads_run
    File? name_output_file
    File? se
    Int? pe_one
    Directory? options_default_human
    File? absolute_path_bowtie
    File? path_directory_writing
    Directory? output_directory_default
    Boolean? allow_ie_terminateif
    Boolean? turns_verbosity_more
    File? path_database_defaults
    Int? subsample
  }
  command <<<
    BASIC_py \
      ~{if defined(type_receptor_choices) then ("-i " +  '"' + type_receptor_choices + '"') else ""} \
      ~{if defined(launch_threads_run) then ("-p " +  '"' + launch_threads_run + '"') else ""} \
      ~{if defined(name_output_file) then ("-n " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(se) then ("-SE " +  '"' + se + '"') else ""} \
      ~{if defined(pe_one) then ("-PE_1 " +  '"' + pe_one + '"') else ""} \
      ~{if defined(options_default_human) then ("-g " +  '"' + options_default_human + '"') else ""} \
      ~{if defined(absolute_path_bowtie) then ("-b " +  '"' + absolute_path_bowtie + '"') else ""} \
      ~{if defined(path_directory_writing) then ("-t " +  '"' + path_directory_writing + '"') else ""} \
      ~{if defined(output_directory_default) then ("-o " +  '"' + output_directory_default + '"') else ""} \
      ~{if (allow_ie_terminateif) then "-a" else ""} \
      ~{if (turns_verbosity_more) then "-v" else ""} \
      ~{if defined(path_database_defaults) then ("-d " +  '"' + path_database_defaults + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""}
  >>>
  parameter_meta {
    type_receptor_choices: "Type of receptor. Choices: \\\"BCR\\\" or \\\"TCR\\\" (default:\\nBCR)"
    launch_threads_run: "Launch p > 2 threads that will run on separate\\nprocessors/cores (default: 2)"
    name_output_file: "Name of output file. Note: a \\\".fasta\\\" extension will\\nbe added (default: result.fasta)"
    se: "Single end FASTQ file (optionally gzipped). (example:\\nse.fastq)"
    pe_one: "Paired end (left) FASTQ file (optionally gzipped)."
    options_default_human: "Options: \\\"human\\\" or \\\"mouse\\\" (default: human). Note:\\nother species are possible by adding the appropriate\\nBowtie2 indices and following the existing db/\\ndirectory structure"
    absolute_path_bowtie: "Absolute path to bowtie2 executable or directory\\ncontaining it"
    path_directory_writing: "Path to directory for writing intermediate files.\\n(default: current working directory)"
    output_directory_default: "Output directory (default: current working directory)"
    allow_ie_terminateif: "Allow for partial reconstruction i.e. do not terminate\\nif one or both chains do not assemble."
    turns_verbosity_more: "Turns on verbosity for more details."
    path_database_defaults: "Path to database directory. Defaults to <path of\\nBASIC.py>/db"
    subsample: "Use the first <int> number of reads of the input.\\nDefault: no limit"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}