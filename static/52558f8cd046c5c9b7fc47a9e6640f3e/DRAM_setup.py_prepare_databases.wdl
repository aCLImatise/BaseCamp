version 1.0

task DRAMsetuppyPrepareDatabases {
  input {
    Directory? output_dir
    File? kegg_loc
    String? gene_ko_link_loc
    File? k_of_am_hmm_loc
    File? k_of_am_ko_list_loc
    String? kegg_download_date
    File? uniref_loc
    Int? uniref_version
    Boolean? skip_uniref
    File? pfam_loc
    File? pfam_hmm_dat
    File? db_can_loc
    File? db_can_fam_activities
    Int? db_can_version
    File? vo_gdb_loc
    File? vog_annotations
    File? viral_loc
    File? peptidase_loc
    File? genome_summary_form_loc
    File? module_step_form_loc
    File? etc_module_database_loc
    File? function_heat_map_form_loc
    String? branch
    Boolean? keep_database_files
    Int? threads
    Boolean? verbose
  }
  command <<<
    DRAM_setup_py prepare_databases \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(kegg_loc) then ("--kegg_loc " +  '"' + kegg_loc + '"') else ""} \
      ~{if defined(gene_ko_link_loc) then ("--gene_ko_link_loc " +  '"' + gene_ko_link_loc + '"') else ""} \
      ~{if defined(k_of_am_hmm_loc) then ("--kofam_hmm_loc " +  '"' + k_of_am_hmm_loc + '"') else ""} \
      ~{if defined(k_of_am_ko_list_loc) then ("--kofam_ko_list_loc " +  '"' + k_of_am_ko_list_loc + '"') else ""} \
      ~{if defined(kegg_download_date) then ("--kegg_download_date " +  '"' + kegg_download_date + '"') else ""} \
      ~{if defined(uniref_loc) then ("--uniref_loc " +  '"' + uniref_loc + '"') else ""} \
      ~{if defined(uniref_version) then ("--uniref_version " +  '"' + uniref_version + '"') else ""} \
      ~{if (skip_uniref) then "--skip_uniref" else ""} \
      ~{if defined(pfam_loc) then ("--pfam_loc " +  '"' + pfam_loc + '"') else ""} \
      ~{if defined(pfam_hmm_dat) then ("--pfam_hmm_dat " +  '"' + pfam_hmm_dat + '"') else ""} \
      ~{if defined(db_can_loc) then ("--dbcan_loc " +  '"' + db_can_loc + '"') else ""} \
      ~{if defined(db_can_fam_activities) then ("--dbcan_fam_activities " +  '"' + db_can_fam_activities + '"') else ""} \
      ~{if defined(db_can_version) then ("--dbcan_version " +  '"' + db_can_version + '"') else ""} \
      ~{if defined(vo_gdb_loc) then ("--vogdb_loc " +  '"' + vo_gdb_loc + '"') else ""} \
      ~{if defined(vog_annotations) then ("--vog_annotations " +  '"' + vog_annotations + '"') else ""} \
      ~{if defined(viral_loc) then ("--viral_loc " +  '"' + viral_loc + '"') else ""} \
      ~{if defined(peptidase_loc) then ("--peptidase_loc " +  '"' + peptidase_loc + '"') else ""} \
      ~{if defined(genome_summary_form_loc) then ("--genome_summary_form_loc " +  '"' + genome_summary_form_loc + '"') else ""} \
      ~{if defined(module_step_form_loc) then ("--module_step_form_loc " +  '"' + module_step_form_loc + '"') else ""} \
      ~{if defined(etc_module_database_loc) then ("--etc_module_database_loc " +  '"' + etc_module_database_loc + '"') else ""} \
      ~{if defined(function_heat_map_form_loc) then ("--function_heatmap_form_loc " +  '"' + function_heat_map_form_loc + '"') else ""} \
      ~{if defined(branch) then ("--branch " +  '"' + branch + '"') else ""} \
      ~{if (keep_database_files) then "--keep_database_files" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dram:1.2.1--py_0"
  }
  parameter_meta {
    output_dir: "output directory (default: .)"
    kegg_loc: "KEGG protein file, should be a single .pep, please\\nmerge all KEGG pep files (default: None)"
    gene_ko_link_loc: "KEGG gene ko link, can be gzipped or not (default:\\nNone)"
    k_of_am_hmm_loc: "hmm file for KOfam (profiles.tar.gz) (default: None)"
    k_of_am_ko_list_loc: "KOfam ko list file (ko_list.gz) (default: None)"
    kegg_download_date: "Date KEGG was download to include in database name\\n(default: None)"
    uniref_loc: "File path to uniref, if already downloaded\\n(uniref90.fasta.gz) (default: None)"
    uniref_version: "UniRef version to download (default: 90)"
    skip_uniref: "Do not download and process uniref90. Saves time and\\nmemory usage and does not impact DRAM distillation\\n(default: False)"
    pfam_loc: "File path to pfam-A full file, if already downloaded\\n(Pfam-A.full.gz) (default: None)"
    pfam_hmm_dat: "pfam hmm .dat file to get PF descriptions, if already\\ndownloaded (Pfam-A.hmm.dat.gz) (default: None)"
    db_can_loc: "File path to dbCAN, if already downloaded (dbCAN-\\nHMMdb-V9.txt) (default: None)"
    db_can_fam_activities: "CAZY family activities file, if already downloaded\\n(CAZyDB.07302020.fam-activities.txt) (default: None)"
    db_can_version: "version of dbCAN to use (default: 9)"
    vo_gdb_loc: "hmm file for vogdb, if already downloaded\\n(vog.hmm.tar.gz) (default: None)"
    vog_annotations: "vogdb annotations file, if already downloaded\\n(vog.annotations.tsv.gz) (default: None)"
    viral_loc: "File path to merged viral protein faa, if already\\ndownloaded (viral.x.protein.faa.gz) (default: None)"
    peptidase_loc: "File path to MEROPS peptidase fasta, if already\\ndownloaded (pepunit.lib) (default: None)"
    genome_summary_form_loc: "File path to genome summary form,if already downloaded\\n(default: None)"
    module_step_form_loc: "File path to module step form, ifalready downloaded\\n(default: None)"
    etc_module_database_loc: "File path to etc module database, if already\\ndownloaded (default: None)"
    function_heat_map_form_loc: "File path to function heatmap form, if already\\ndownloaded (default: None)"
    branch: "git branch from which to download forms; THIS SHOULD\\nNOT BE CHANGED BY REGULAR USERS (default: master)"
    keep_database_files: "Keep unporcessed database files (default: False)"
    threads: "Number of threads to use building mmseqs2 databases\\n(default: 10)"
    verbose: "Make it talk more (default: False)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}