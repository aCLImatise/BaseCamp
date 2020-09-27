version 1.0

task MetabinkitBlast {
  input {
    File? reference_blast_indexed
  }
  command <<<
    metabinkit_blast \
      ~{if defined(reference_blast_indexed) then ("-f " +  '"' + reference_blast_indexed + '"') else ""}
  >>>
  parameter_meta {
    reference_blast_indexed: "- reference Blast indexed database\\n-o outfile\\n-O outformat       - output format (default: 6 qseqid evalue pident qcovs saccver staxids ssciname sseqid)\\n-T taxdir          - folder with NCBI's taxonomy database (default:/usr/local/bin/../db/)\\n-t threads         - maximum number of threads (default:2)\\n-m max_hsps        - BLAST's max_hsps paramater (default:1)\\n-w word_size       - BLAST's word_size paramater (default:6)\\n-e evalue          - BLAST's evalue paramater (default:1)\\n-I perc_identity   - BLAST's perc_identity paramater (default:50)\\n-q qcov_hsp_perc   - BLAST's qcov_hsp_perc paramater (default:98)\\n-G gapopen         - BLAST's gapopen paramater (default:0)\\n-E gapextend       - BLAST's gapextend paramater (default:2)\\n-X task            - BLAST's task parameter (default:blastn)\\n-r reward\\n-p penalty\\n-M max_target_seqs\\n-N taxids_blacklist_files - restrict search to taxids not present in the files provided (separated by comma). This options is incompatible with -P.\\n-P taxids_positive_files - restrict search to taxids present in the files provided (separated by comma). This option is incompatible with -N.\\n-v                       - print metabinkit version and exits\\n-h                 - provides usage information\\n"
  }
  output {
    File out_stdout = stdout()
  }
}