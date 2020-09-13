version 1.0

task RsatCrerscan {
  input {
    File? specified_input_read
    String? in_format
    File? output_file_format
    Int? level_verbose_messages
    File? auto_param
    Boolean? sort_list_sites
    Boolean? return_limits
    Boolean? return_limits_filtered
    String? lth_score
    String? uth_score
    String? uth_site_pval
    Int? number_of_matrix
    Int? lth_cre_r_size
    Int? uth_cre_r_size
    Int? lth_cre_r_sites
    Int? uth_cre_r_sites
    Int? lth_cre_r_sites_distance
    Int? uth_cre_r_sites_distance
    Float? uth_cre_r_pval
    Float? uth_cre_r_eval
    Int? lth_cre_r_sig
    String? uth_overlap
    Boolean? no_pval
    Boolean? pre_table
    String cre_r_scan
  }
  command <<<
    rsat crer_scan \
      ~{cre_r_scan} \
      ~{if defined(specified_input_read) then ("-i " +  '"' + specified_input_read + '"') else ""} \
      ~{if defined(in_format) then ("-in_format " +  '"' + in_format + '"') else ""} \
      ~{if defined(output_file_format) then ("-o " +  '"' + output_file_format + '"') else ""} \
      ~{if defined(level_verbose_messages) then ("-v " +  '"' + level_verbose_messages + '"') else ""} \
      ~{if defined(auto_param) then ("-autoparam " +  '"' + auto_param + '"') else ""} \
      ~{if (sort_list_sites) then "-s" else ""} \
      ~{if (return_limits) then "-return_limits" else ""} \
      ~{if (return_limits_filtered) then "-return_limits_filtered" else ""} \
      ~{if defined(lth_score) then ("-lth_score " +  '"' + lth_score + '"') else ""} \
      ~{if defined(uth_score) then ("-uth_score " +  '"' + uth_score + '"') else ""} \
      ~{if defined(uth_site_pval) then ("-uth_site_pval " +  '"' + uth_site_pval + '"') else ""} \
      ~{if defined(number_of_matrix) then ("-number_of_matrix " +  '"' + number_of_matrix + '"') else ""} \
      ~{if defined(lth_cre_r_size) then ("-lth_crer_size " +  '"' + lth_cre_r_size + '"') else ""} \
      ~{if defined(uth_cre_r_size) then ("-uth_crer_size " +  '"' + uth_cre_r_size + '"') else ""} \
      ~{if defined(lth_cre_r_sites) then ("-lth_crer_sites " +  '"' + lth_cre_r_sites + '"') else ""} \
      ~{if defined(uth_cre_r_sites) then ("-uth_crer_sites " +  '"' + uth_cre_r_sites + '"') else ""} \
      ~{if defined(lth_cre_r_sites_distance) then ("-lth_crer_sites_distance " +  '"' + lth_cre_r_sites_distance + '"') else ""} \
      ~{if defined(uth_cre_r_sites_distance) then ("-uth_crer_sites_distance " +  '"' + uth_cre_r_sites_distance + '"') else ""} \
      ~{if defined(uth_cre_r_pval) then ("-uth_crer_pval " +  '"' + uth_cre_r_pval + '"') else ""} \
      ~{if defined(uth_cre_r_eval) then ("-uth_crer_eval " +  '"' + uth_cre_r_eval + '"') else ""} \
      ~{if defined(lth_cre_r_sig) then ("-lth_crer_sig " +  '"' + lth_cre_r_sig + '"') else ""} \
      ~{if defined(uth_overlap) then ("-uth_overlap " +  '"' + uth_overlap + '"') else ""} \
      ~{if (no_pval) then "-nopval" else ""} \
      ~{if (pre_table) then "-pre_table" else ""}
  >>>
  parameter_meta {
    specified_input_read: "If not specified, input is read from STDIN"
    in_format: "input_format. Default: ft (produced by RSAT matrix-\\nscan and dna-pattern). Supported: ft, bed"
    output_file_format: "Output file in ft format"
    level_verbose_messages: "level of verbose. Messages are wrote on standard\\nerror. Supported: Integer = 1,2,3. By default : 1 = No\\nmessage. Level 2 : moderately density of messages.\\nLevel 3 : High density"
    auto_param: "Extract some input parameters from the commented rows\\n(starting with ';') of the input file. This option is\\nonly valid for files produced by matrix-scan with a\\nverbosity of at least 1."
    sort_list_sites: "sort the list of sites. Very recommended. The sites\\nare sorted by center position"
    return_limits: "return every limits of sequences. By default : no\\nreturn any limits"
    return_limits_filtered: "return the limits filtered of the sequence. Only the\\nsequence limits of CRERs. By default : no return any\\nlimits"
    lth_score: "minimal site score to be considered"
    uth_score: "maximal site score to be considered"
    uth_site_pval: "maximal p_value of sites to be considered. recommended\\nto be the higher site p_value considered"
    number_of_matrix: "number of matrix used for the discovery of\\ntranscription factor binding sites. Warning : Not\\nconsidered if autoparam is on"
    lth_cre_r_size: "minimal size of the enriched region (in bp). Default:\\nminimal size = 30bp"
    uth_cre_r_size: "maximal size of the enriched region (in bp). Default:\\nmaximal site = 500bp"
    lth_cre_r_sites: "minimal number of sites covered by the enriched\\nregion. Default: minimal number of sites = 2"
    uth_cre_r_sites: "maximal number of sites covered by the enriched\\nregion."
    lth_cre_r_sites_distance: "distance between successive sites to be considered. A\\nminimal inter-site distance can be used to prevent\\noverlap between redundant matrices. Default = minimal\\ndistance = 1"
    uth_cre_r_sites_distance: "distance between successive sites to be considered. A\\nmaximal inter-site distance can be used to prevent\\nmerging distinct modules into a single one. Note: the\\nmaximal inter-site distance is one of the most\\ninfluential parameters in cluster-buster. Default:\\nmaximal distance = 35"
    uth_cre_r_pval: "maximal binomial p-value. Default: 1e-4"
    uth_cre_r_eval: "maximal e-value. Default: 1e-4"
    lth_cre_r_sig: "minimal binomial significance. Default: 2"
    uth_overlap: "maximal overlap to define two distinct sites"
    no_pval: "compute CRER without p value"
    pre_table: "compute a table where is all possible p_value. Useful\\nwhere there is a huge number of sites to scan.\\n"
    cre_r_scan: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_format = "${in_output_file_format}"
  }
}