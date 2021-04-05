version 1.0

task DRAMsetuppySetDatabaseLocations {
  input {
    File? kegg_db_loc
    File? k_of_am_hmm_loc
    File? k_of_am_ko_list_loc
    File? uniref_db_loc
    File? pfam_db_loc
    File? pfam_hmm_dat
    File? db_can_db_loc
    File? db_can_fam_activities
    File? vo_gdb_db_loc
    File? vog_annotations
    File? viral_db_loc
    File? peptidase_db_loc
    String? description_db_loc
    File? genome_summary_form_loc
    File? module_step_form_loc
    File? etc_module_database_loc
    File? function_heat_map_form_loc
    File? amg_database_loc
  }
  command <<<
    DRAM_setup_py set_database_locations \
      ~{if defined(kegg_db_loc) then ("--kegg_db_loc " +  '"' + kegg_db_loc + '"') else ""} \
      ~{if defined(k_of_am_hmm_loc) then ("--kofam_hmm_loc " +  '"' + k_of_am_hmm_loc + '"') else ""} \
      ~{if defined(k_of_am_ko_list_loc) then ("--kofam_ko_list_loc " +  '"' + k_of_am_ko_list_loc + '"') else ""} \
      ~{if defined(uniref_db_loc) then ("--uniref_db_loc " +  '"' + uniref_db_loc + '"') else ""} \
      ~{if defined(pfam_db_loc) then ("--pfam_db_loc " +  '"' + pfam_db_loc + '"') else ""} \
      ~{if defined(pfam_hmm_dat) then ("--pfam_hmm_dat " +  '"' + pfam_hmm_dat + '"') else ""} \
      ~{if defined(db_can_db_loc) then ("--dbcan_db_loc " +  '"' + db_can_db_loc + '"') else ""} \
      ~{if defined(db_can_fam_activities) then ("--dbcan_fam_activities " +  '"' + db_can_fam_activities + '"') else ""} \
      ~{if defined(vo_gdb_db_loc) then ("--vogdb_db_loc " +  '"' + vo_gdb_db_loc + '"') else ""} \
      ~{if defined(vog_annotations) then ("--vog_annotations " +  '"' + vog_annotations + '"') else ""} \
      ~{if defined(viral_db_loc) then ("--viral_db_loc " +  '"' + viral_db_loc + '"') else ""} \
      ~{if defined(peptidase_db_loc) then ("--peptidase_db_loc " +  '"' + peptidase_db_loc + '"') else ""} \
      ~{if defined(description_db_loc) then ("--description_db_loc " +  '"' + description_db_loc + '"') else ""} \
      ~{if defined(genome_summary_form_loc) then ("--genome_summary_form_loc " +  '"' + genome_summary_form_loc + '"') else ""} \
      ~{if defined(module_step_form_loc) then ("--module_step_form_loc " +  '"' + module_step_form_loc + '"') else ""} \
      ~{if defined(etc_module_database_loc) then ("--etc_module_database_loc " +  '"' + etc_module_database_loc + '"') else ""} \
      ~{if defined(function_heat_map_form_loc) then ("--function_heatmap_form_loc " +  '"' + function_heat_map_form_loc + '"') else ""} \
      ~{if defined(amg_database_loc) then ("--amg_database_loc " +  '"' + amg_database_loc + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dram:1.2.1--py_0"
  }
  parameter_meta {
    kegg_db_loc: "mmseqs2 database file from kegg .pep file (default:\\nNone)"
    k_of_am_hmm_loc: "hmm file for KOfam, already processed withhmmpress\\n(default: None)"
    k_of_am_ko_list_loc: "KOfam ko list file (default: None)"
    uniref_db_loc: "mmseqs2 database file from uniref .faa (default: None)"
    pfam_db_loc: "mmseqs2 database file from pfam .hmm (default: None)"
    pfam_hmm_dat: "pfam hmm .dat file to get PF descriptions (default:\\nNone)"
    db_can_db_loc: "hmm file for dbcan, already processed with hmmpress\\n(default: None)"
    db_can_fam_activities: "CAZY family activities file (default: None)"
    vo_gdb_db_loc: "hmm file for vogdb, already processed with hmmpress\\n(default: None)"
    vog_annotations: "vog annotations file (default: None)"
    viral_db_loc: "mmseqs2 database file from ref seq viral gene\\ncollection (default: None)"
    peptidase_db_loc: "mmseqs2 database file from MEROPS database (default:\\nNone)"
    description_db_loc: "Location to write description sqlite db (default:\\nNone)"
    genome_summary_form_loc: "File path to genome summary form (default: None)"
    module_step_form_loc: "File path to module step form (default: None)"
    etc_module_database_loc: "File path to etc module database (default: None)"
    function_heat_map_form_loc: "File path to function heatmap form (default: None)"
    amg_database_loc: "File path to amg database (default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}