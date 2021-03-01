version 1.0

task MetabinkitBlast {
  input {
    File? reference_blast_indexed
    Int? output_format_default
    Directory? folder_ncbis_taxonomy
    Int? maximum_number_threads
    Int? blasts_maxhsps_paramater
    Int? blasts_wordsize_paramater
    Int? blasts_evalue_paramater
    Int? blasts_percidentity_paramater
    Int? blasts_qcovhspperc_paramater
    Int? blasts_gapopen_paramater
    Int? blasts_gapextend_paramater
    String? blasts_task_parameter
    Int? _blasts_reward_parameter_default
    Int? blasts_reward_parameter_default_
    Int? blasts_maxtargetseqs_parameter
    String? restrict_search_present
    String? restrict_search_taxids
    Boolean? print_metabinkit_version
  }
  command <<<
    metabinkit_blast \
      ~{if defined(reference_blast_indexed) then ("-f " +  '"' + reference_blast_indexed + '"') else ""} \
      ~{if defined(output_format_default) then ("-o " +  '"' + output_format_default + '"') else ""} \
      ~{if defined(folder_ncbis_taxonomy) then ("-T " +  '"' + folder_ncbis_taxonomy + '"') else ""} \
      ~{if defined(maximum_number_threads) then ("-t " +  '"' + maximum_number_threads + '"') else ""} \
      ~{if defined(blasts_maxhsps_paramater) then ("-m " +  '"' + blasts_maxhsps_paramater + '"') else ""} \
      ~{if defined(blasts_wordsize_paramater) then ("-w " +  '"' + blasts_wordsize_paramater + '"') else ""} \
      ~{if defined(blasts_evalue_paramater) then ("-e " +  '"' + blasts_evalue_paramater + '"') else ""} \
      ~{if defined(blasts_percidentity_paramater) then ("-I " +  '"' + blasts_percidentity_paramater + '"') else ""} \
      ~{if defined(blasts_qcovhspperc_paramater) then ("-q " +  '"' + blasts_qcovhspperc_paramater + '"') else ""} \
      ~{if defined(blasts_gapopen_paramater) then ("-G " +  '"' + blasts_gapopen_paramater + '"') else ""} \
      ~{if defined(blasts_gapextend_paramater) then ("-E " +  '"' + blasts_gapextend_paramater + '"') else ""} \
      ~{if defined(blasts_task_parameter) then ("-X " +  '"' + blasts_task_parameter + '"') else ""} \
      ~{if defined(_blasts_reward_parameter_default) then ("-r " +  '"' + _blasts_reward_parameter_default + '"') else ""} \
      ~{if defined(blasts_reward_parameter_default_) then ("-p " +  '"' + blasts_reward_parameter_default_ + '"') else ""} \
      ~{if defined(blasts_maxtargetseqs_parameter) then ("-M " +  '"' + blasts_maxtargetseqs_parameter + '"') else ""} \
      ~{if defined(restrict_search_present) then ("-N " +  '"' + restrict_search_present + '"') else ""} \
      ~{if defined(restrict_search_taxids) then ("-P " +  '"' + restrict_search_taxids + '"') else ""} \
      ~{if (print_metabinkit_version) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metabinkit:0.2.2--r40hed695b0_1"
  }
  parameter_meta {
    reference_blast_indexed: "- reference Blast indexed database"
    output_format_default: "- output format (default: 6 qseqid evalue pident qcovs saccver staxid ssciname sseqid)"
    folder_ncbis_taxonomy: "- folder with NCBI's taxonomy database (default:/usr/local/bin/../db/)"
    maximum_number_threads: "- maximum number of threads (default:2)"
    blasts_maxhsps_paramater: "- BLAST's max_hsps paramater (default:1)"
    blasts_wordsize_paramater: "- BLAST's word_size paramater (default:6)"
    blasts_evalue_paramater: "- BLAST's evalue paramater (default:1)"
    blasts_percidentity_paramater: "- BLAST's perc_identity paramater (default:50)"
    blasts_qcovhspperc_paramater: "- BLAST's qcov_hsp_perc paramater (default:98)"
    blasts_gapopen_paramater: "- BLAST's gapopen paramater (default:0)"
    blasts_gapextend_paramater: "- BLAST's gapextend paramater (default:2)"
    blasts_task_parameter: "- BLAST's task parameter (default:blastn)"
    _blasts_reward_parameter_default: "- BLAST´s reward parameter (default:1)"
    blasts_reward_parameter_default_: "- BLAST´s reward parameter (default:-1)"
    blasts_maxtargetseqs_parameter: "- BLAST´s max_target_seqs parameter (default:100)"
    restrict_search_present: "- restrict search to taxids not present in the files provided (separated by comma). This options is incompatible with -P."
    restrict_search_taxids: "- restrict search to taxids present in the files provided (separated by comma). This option is incompatible with -N."
    print_metabinkit_version: "- print metabinkit version and exits"
  }
  output {
    File out_stdout = stdout()
  }
}