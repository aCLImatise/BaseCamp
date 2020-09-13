version 1.0

task MetabinkitBlast {
  input {
    File? reference_blast_indexed
    String? var_1
    Int? output_format_default
    Directory? folder_ncbis_taxonomy
    Int? maximum_number_threads
    Int? blasts_paramater_default
    Int? blasts_wordsize_default
    Int? blasts_evalue_paramater
    Int? blasts_percidentity_paramater
    Int? blasts_qcovhspperc_paramater
    Int? blasts_gapopen_default
    Int? blasts_gapextend_paramater
    String? blasts_task_parameter
    String? r
    String? var_14
    Int? var_15
    String? restrict_search_present
    String? restrict_search_taxids
    Boolean? print_metabinkit_version
  }
  command <<<
    metabinkit_blast \
      ~{if defined(reference_blast_indexed) then ("-f " +  '"' + reference_blast_indexed + '"') else ""} \
      ~{if defined(var_1) then ("-o " +  '"' + var_1 + '"') else ""} \
      ~{if defined(output_format_default) then ("-O " +  '"' + output_format_default + '"') else ""} \
      ~{if defined(folder_ncbis_taxonomy) then ("-T " +  '"' + folder_ncbis_taxonomy + '"') else ""} \
      ~{if defined(maximum_number_threads) then ("-t " +  '"' + maximum_number_threads + '"') else ""} \
      ~{if defined(blasts_paramater_default) then ("-m " +  '"' + blasts_paramater_default + '"') else ""} \
      ~{if defined(blasts_wordsize_default) then ("-w " +  '"' + blasts_wordsize_default + '"') else ""} \
      ~{if defined(blasts_evalue_paramater) then ("-e " +  '"' + blasts_evalue_paramater + '"') else ""} \
      ~{if defined(blasts_percidentity_paramater) then ("-I " +  '"' + blasts_percidentity_paramater + '"') else ""} \
      ~{if defined(blasts_qcovhspperc_paramater) then ("-q " +  '"' + blasts_qcovhspperc_paramater + '"') else ""} \
      ~{if defined(blasts_gapopen_default) then ("-G " +  '"' + blasts_gapopen_default + '"') else ""} \
      ~{if defined(blasts_gapextend_paramater) then ("-E " +  '"' + blasts_gapextend_paramater + '"') else ""} \
      ~{if defined(blasts_task_parameter) then ("-X " +  '"' + blasts_task_parameter + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(var_14) then ("-p " +  '"' + var_14 + '"') else ""} \
      ~{if defined(var_15) then ("-M " +  '"' + var_15 + '"') else ""} \
      ~{if defined(restrict_search_present) then ("-N " +  '"' + restrict_search_present + '"') else ""} \
      ~{if defined(restrict_search_taxids) then ("-P " +  '"' + restrict_search_taxids + '"') else ""} \
      ~{if (print_metabinkit_version) then "-v" else ""}
  >>>
  parameter_meta {
    reference_blast_indexed: "- reference Blast indexed database"
    var_1: ""
    output_format_default: "- output format (default: 6 qseqid evalue pident qcovs saccver staxids ssciname sseqid)"
    folder_ncbis_taxonomy: "- folder with NCBI's taxonomy database (default:/usr/local/bin/../db/)"
    maximum_number_threads: "- maximum number of threads (default:2)"
    blasts_paramater_default: "- BLAST's max_hsps paramater (default:1)"
    blasts_wordsize_default: "- BLAST's word_size paramater (default:6)"
    blasts_evalue_paramater: "- BLAST's evalue paramater (default:1)"
    blasts_percidentity_paramater: "- BLAST's perc_identity paramater (default:50)"
    blasts_qcovhspperc_paramater: "- BLAST's qcov_hsp_perc paramater (default:98)"
    blasts_gapopen_default: "- BLAST's gapopen paramater (default:0)"
    blasts_gapextend_paramater: "- BLAST's gapextend paramater (default:2)"
    blasts_task_parameter: "- BLAST's task parameter (default:blastn)"
    r: ""
    var_14: ""
    var_15: ""
    restrict_search_present: "- restrict search to taxids not present in the files provided (separated by comma). This options is incompatible with -P."
    restrict_search_taxids: "- restrict search to taxids present in the files provided (separated by comma). This option is incompatible with -N."
    print_metabinkit_version: "- print metabinkit version and exits"
  }
  output {
    File out_stdout = stdout()
  }
}