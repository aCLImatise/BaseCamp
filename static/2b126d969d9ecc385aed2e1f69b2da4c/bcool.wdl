version 1.0

task Bcool {
  input {
    String? mandatory_input_fasta
    File? path_store_results
    Int? number_cores_used
    Int? kmer_size_default
    Int? kmers_present_less
    String? unitig_coverage_cleaning
    Int? advanced_maximum_number
    Int? advanced_index_one
    Int? advanced_maximum_occurence
    String? advanced_print_command
  }
  command <<<
    bcool \
      ~{if defined(mandatory_input_fasta) then ("-u " +  '"' + mandatory_input_fasta + '"') else ""} \
      ~{if defined(path_store_results) then ("-o " +  '"' + path_store_results + '"') else ""} \
      ~{if defined(number_cores_used) then ("-t " +  '"' + number_cores_used + '"') else ""} \
      ~{if defined(kmer_size_default) then ("-k " +  '"' + kmer_size_default + '"') else ""} \
      ~{if defined(kmers_present_less) then ("-s " +  '"' + kmers_present_less + '"') else ""} \
      ~{if defined(unitig_coverage_cleaning) then ("-S " +  '"' + unitig_coverage_cleaning + '"') else ""} \
      ~{if defined(advanced_maximum_number) then ("-m " +  '"' + advanced_maximum_number + '"') else ""} \
      ~{if defined(advanced_index_one) then ("-i " +  '"' + advanced_index_one + '"') else ""} \
      ~{if defined(advanced_maximum_occurence) then ("-n " +  '"' + advanced_maximum_occurence + '"') else ""} \
      ~{if defined(advanced_print_command) then ("-d " +  '"' + advanced_print_command + '"') else ""}
  >>>
  parameter_meta {
    mandatory_input_fasta: "(MANDATORY) input fasta read files. Several read files must be concatenated"
    path_store_results: "Path to store the results (Default = current directory)"
    number_cores_used: "Number of cores used (Default = 1)"
    kmer_size_default: "k-mer size (Default = AUTO)"
    kmers_present_less: "k-mers present strictly less than this number of times in the dataset will be discarded (Default = 2)"
    unitig_coverage_cleaning: "Unitig Coverage for cleaning (Default = AUTO)"
    advanced_maximum_number: "(ADVANCED) Maximum number of corrected bases (Default = 10)"
    advanced_index_one: "(ADVANCED) index one out of i anchors to reduce memory consumption (Default = 1)"
    advanced_maximum_occurence: "(ADVANCED) Maximum occurence of an anchor (Default = 1), better correction for repetitive genome but slower"
    advanced_print_command: "(ADVANCED) Print command lines"
  }
  output {
    File out_stdout = stdout()
  }
}