version 1.0

task Taxator {
  input {
    Boolean? citation
    Boolean? advanced_options
    Boolean? arg_rpa_set
    Boolean? arg_filename_seqidtaxid
    Boolean? arg_query_sequences
    Boolean? arg_reference_sequences
    File? arg_fasta_file
    Boolean? arg_sets_number
    Boolean? arg_devnull_name
    String reference
  }
  command <<<
    taxator \
      ~{reference} \
      ~{if (citation) then "--citation" else ""} \
      ~{if (advanced_options) then "--advanced-options" else ""} \
      ~{if (arg_rpa_set) then "-a" else ""} \
      ~{if (arg_filename_seqidtaxid) then "-g" else ""} \
      ~{if (arg_query_sequences) then "-v" else ""} \
      ~{if (arg_reference_sequences) then "-f" else ""} \
      ~{if (arg_fasta_file) then "-i" else ""} \
      ~{if (arg_sets_number) then "-p" else ""} \
      ~{if (arg_devnull_name) then "-l" else ""}
  >>>
  parameter_meta {
    citation: "show citation info"
    advanced_options: "show advanced program options"
    arg_rpa_set: "[ --algorithm ] arg (=rpa)      set the algorithm that is used to predict\\ntaxonomic ids from alignments"
    arg_filename_seqidtaxid: "[ --seqid-taxid-mapping ] arg   filename of seqid->taxid mapping for"
    arg_query_sequences: "[ --query-sequences-index ] arg query sequences FASTA index, for\\nout-of-memory operation; is created if not\\nexisting"
    arg_reference_sequences: "[ --ref-sequences ] arg         reference sequences FASTA"
    arg_fasta_file: "[ --ref-sequences-index ] arg   FASTA file index, for out-of-memory\\noperation; is created if not existing"
    arg_sets_number: "[ --processors ] arg (=1)       sets number of threads, number > 2 will\\nheavily profit from multi-core\\narchitectures, set to 0 for max.\\nperformance"
    arg_devnull_name: "[ --logfile ] arg (=/dev/null)  specify name of file for logging\\n(appending lines)\\n"
    reference: "-q [ --query-sequences ] arg       query sequences FASTA"
  }
  output {
    File out_stdout = stdout()
    File out_arg_fasta_file = "${in_arg_fasta_file}"
  }
}