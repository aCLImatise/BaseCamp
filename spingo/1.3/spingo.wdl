version 1.0

task Spingo {
  input {
    Boolean? _version_information
    Boolean? arg_kmer_size
    Boolean? arg_number_bootstrap
    Boolean? arg_fraction_subsampled
    Boolean? arg_number_processor
    Boolean? arg_path_fasta_format_reference
    Boolean? arg_path_fasta_format_input
    Boolean? specified_index_will
    Boolean? specified_species_lead
  }
  command <<<
    spingo \
      ~{true="-v" false="" _version_information} \
      ~{true="-k" false="" arg_kmer_size} \
      ~{true="-b" false="" arg_number_bootstrap} \
      ~{true="-s" false="" arg_fraction_subsampled} \
      ~{true="-p" false="" arg_number_processor} \
      ~{true="-d" false="" arg_path_fasta_format_reference} \
      ~{true="-i" false="" arg_path_fasta_format_input} \
      ~{true="-w" false="" specified_index_will} \
      ~{true="-a" false="" specified_species_lead}
  >>>
  parameter_meta {
    _version_information: "[ --version ]             get version information"
    arg_kmer_size: "[ --kmersize ] arg (=8)   K-mer size"
    arg_number_bootstrap: "[ --bootstrap ] arg (=10) number of bootstrap samples"
    arg_fraction_subsampled: "[ --subsample ] arg       fraction of kmers to be subsampled for  bootstrapping. Default is kmersize"
    arg_number_processor: "[ --processors ] arg (=1) number of processor threads"
    arg_path_fasta_format_reference: "[ --database ] arg        path to the fasta format reference database"
    arg_path_fasta_format_input: "[ --input ] arg           path to the fasta format input file"
    specified_index_will: "[ --write-index ]         if specified, index will be written to disk"
    specified_species_lead: "[ --ambiguous ]           if specified, species which lead to an ambiguous hit will be listed"
  }
}