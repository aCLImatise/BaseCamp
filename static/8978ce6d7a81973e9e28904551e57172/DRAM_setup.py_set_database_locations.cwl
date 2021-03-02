class: CommandLineTool
id: DRAM_setup.py_set_database_locations.cwl
inputs:
- id: in_kegg_db_loc
  doc: "mmseqs2 database file from kegg .pep file (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --kegg_db_loc
- id: in_k_of_am_hmm_loc
  doc: "hmm file for KOfam, already processed withhmmpress\n(default: None)"
  type: File?
  inputBinding:
    prefix: --kofam_hmm_loc
- id: in_k_of_am_ko_list_loc
  doc: 'KOfam ko list file (default: None)'
  type: File?
  inputBinding:
    prefix: --kofam_ko_list_loc
- id: in_uniref_db_loc
  doc: 'mmseqs2 database file from uniref .faa (default: None)'
  type: File?
  inputBinding:
    prefix: --uniref_db_loc
- id: in_pfam_db_loc
  doc: 'mmseqs2 database file from pfam .hmm (default: None)'
  type: File?
  inputBinding:
    prefix: --pfam_db_loc
- id: in_pfam_hmm_dat
  doc: "pfam hmm .dat file to get PF descriptions (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --pfam_hmm_dat
- id: in_db_can_db_loc
  doc: "hmm file for dbcan, already processed with hmmpress\n(default: None)"
  type: File?
  inputBinding:
    prefix: --dbcan_db_loc
- id: in_db_can_fam_activities
  doc: 'CAZY family activities file (default: None)'
  type: File?
  inputBinding:
    prefix: --dbcan_fam_activities
- id: in_vo_gdb_db_loc
  doc: "hmm file for vogdb, already processed with hmmpress\n(default: None)"
  type: File?
  inputBinding:
    prefix: --vogdb_db_loc
- id: in_vog_annotations
  doc: 'vog annotations file (default: None)'
  type: File?
  inputBinding:
    prefix: --vog_annotations
- id: in_viral_db_loc
  doc: "mmseqs2 database file from ref seq viral gene\ncollection (default: None)"
  type: File?
  inputBinding:
    prefix: --viral_db_loc
- id: in_peptidase_db_loc
  doc: "mmseqs2 database file from MEROPS database (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --peptidase_db_loc
- id: in_description_db_loc
  doc: "Location to write description sqlite db (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --description_db_loc
- id: in_genome_summary_form_loc
  doc: 'File path to genome summary form (default: None)'
  type: File?
  inputBinding:
    prefix: --genome_summary_form_loc
- id: in_module_step_form_loc
  doc: 'File path to module step form (default: None)'
  type: File?
  inputBinding:
    prefix: --module_step_form_loc
- id: in_etc_module_database_loc
  doc: 'File path to etc module database (default: None)'
  type: File?
  inputBinding:
    prefix: --etc_module_database_loc
- id: in_function_heat_map_form_loc
  doc: 'File path to function heatmap form (default: None)'
  type: File?
  inputBinding:
    prefix: --function_heatmap_form_loc
- id: in_amg_database_loc
  doc: 'File path to amg database (default: None)'
  type: File?
  inputBinding:
    prefix: --amg_database_loc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DRAM-setup.py
- set_database_locations
