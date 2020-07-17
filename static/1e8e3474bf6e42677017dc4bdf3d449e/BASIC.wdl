version 1.0

task BASIC.py {
  input {
    String? type_receptor_choices
    String? launch_p_threads
    String? name_output_file
    String? se
    String? pe_one
    String? pe_two
    String? options_default_human
    String? absolute_path_bowtie
    String? path_directory_writing
    String? output_directory_default
    Boolean? allow_partial_reconstruction
    Boolean? turns_verbosity_more
    String? path_database_defaults
    String? subsample
  }
  command <<<
    BASIC.py \
      ~{if defined(type_receptor_choices) then ("-i " +  '"' + type_receptor_choices + '"') else ""} \
      ~{if defined(launch_p_threads) then ("-p " +  '"' + launch_p_threads + '"') else ""} \
      ~{if defined(name_output_file) then ("-n " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(se) then ("-SE " +  '"' + se + '"') else ""} \
      ~{if defined(pe_one) then ("-PE_1 " +  '"' + pe_one + '"') else ""} \
      ~{if defined(pe_two) then ("-PE_2 " +  '"' + pe_two + '"') else ""} \
      ~{if defined(options_default_human) then ("-g " +  '"' + options_default_human + '"') else ""} \
      ~{if defined(absolute_path_bowtie) then ("-b " +  '"' + absolute_path_bowtie + '"') else ""} \
      ~{if defined(path_directory_writing) then ("-t " +  '"' + path_directory_writing + '"') else ""} \
      ~{if defined(output_directory_default) then ("-o " +  '"' + output_directory_default + '"') else ""} \
      ~{true="-a" false="" allow_partial_reconstruction} \
      ~{true="-v" false="" turns_verbosity_more} \
      ~{if defined(path_database_defaults) then ("-d " +  '"' + path_database_defaults + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""}
  >>>
  parameter_meta {
    type_receptor_choices: "Type of receptor. Choices: \"BCR\" or \"TCR\" (default: BCR)"
    launch_p_threads: "Launch p > 2 threads that will run on separate processors/cores (default: 2)"
    name_output_file: "Name of output file. Note: a \".fasta\" extension will be added (default: result.fasta)"
    se: "Single end FASTQ file (optionally gzipped). (example: se.fastq)"
    pe_one: "Paired end (left) FASTQ file (optionally gzipped). -PE_2 is required and pairs must match order. (example: pe_1.fastq)"
    pe_two: "Paired end (right) FASTQ file (optionally gzipped). (example: pe_2.fastq)"
    options_default_human: "Options: \"human\" or \"mouse\" (default: human). Note: other species are possible by adding the appropriate Bowtie2 indices and following the existing db/ directory structure"
    absolute_path_bowtie: "Absolute path to bowtie2 executable or directory containing it"
    path_directory_writing: "Path to directory for writing intermediate files. (default: current working directory)"
    output_directory_default: "Output directory (default: current working directory)"
    allow_partial_reconstruction: "Allow for partial reconstruction i.e. do not terminate if one or both chains do not assemble."
    turns_verbosity_more: "Turns on verbosity for more details."
    path_database_defaults: "Path to database directory. Defaults to <path of BASIC.py>/db"
    subsample: "Use the first <int> number of reads of the input. Default: no limit"
  }
}