version 1.0

task Taxator {
  input {
    Boolean? citation
    Boolean? advanced_options
    Boolean? arg_rpa_set
    Boolean? arg_filename_seqidtaxid
    Boolean? _arg_query_sequences_fasta
    Boolean? arg_query_sequences_fasta_index
    Boolean? arg_reference_sequences
    Boolean? arg_fasta_file
    Boolean? arg_sets_number
    Boolean? arg_devnull_specify
  }
  command <<<
    taxator \
      ~{true="--citation" false="" citation} \
      ~{true="--advanced-options" false="" advanced_options} \
      ~{true="-a" false="" arg_rpa_set} \
      ~{true="-g" false="" arg_filename_seqidtaxid} \
      ~{true="-q" false="" _arg_query_sequences_fasta} \
      ~{true="-v" false="" arg_query_sequences_fasta_index} \
      ~{true="-f" false="" arg_reference_sequences} \
      ~{true="-i" false="" arg_fasta_file} \
      ~{true="-p" false="" arg_sets_number} \
      ~{true="-l" false="" arg_devnull_specify}
  >>>
  parameter_meta {
    citation: "show citation info"
    advanced_options: "show advanced program options"
    arg_rpa_set: "[ --algorithm ] arg (=rpa)      set the algorithm that is used to predict  taxonomic ids from alignments"
    arg_filename_seqidtaxid: "[ --seqid-taxid-mapping ] arg   filename of seqid->taxid mapping for  reference"
    _arg_query_sequences_fasta: "[ --query-sequences ] arg       query sequences FASTA"
    arg_query_sequences_fasta_index: "[ --query-sequences-index ] arg query sequences FASTA index, for  out-of-memory operation; is created if not existing"
    arg_reference_sequences: "[ --ref-sequences ] arg         reference sequences FASTA"
    arg_fasta_file: "[ --ref-sequences-index ] arg   FASTA file index, for out-of-memory  operation; is created if not existing"
    arg_sets_number: "[ --processors ] arg (=1)       sets number of threads, number > 2 will  heavily profit from multi-core  architectures, set to 0 for max.  performance"
    arg_devnull_specify: "[ --logfile ] arg (=/dev/null)  specify name of file for logging  (appending lines)"
  }
}