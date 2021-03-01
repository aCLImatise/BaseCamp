class: CommandLineTool
id: DRAM_setup.py_prepare_databases.cwl
inputs:
- id: in_output_dir
  doc: 'output directory (default: .)'
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_kegg_loc
  doc: "KEGG protein file, should be a single .pep, please\nmerge all KEGG pep files\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --kegg_loc
- id: in_gene_ko_link_loc
  doc: "KEGG gene ko link, can be gzipped or not (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --gene_ko_link_loc
- id: in_k_of_am_hmm_loc
  doc: 'hmm file for KOfam (profiles.tar.gz) (default: None)'
  type: File?
  inputBinding:
    prefix: --kofam_hmm_loc
- id: in_k_of_am_ko_list_loc
  doc: 'KOfam ko list file (ko_list.gz) (default: None)'
  type: File?
  inputBinding:
    prefix: --kofam_ko_list_loc
- id: in_kegg_download_date
  doc: "Date KEGG was download to include in database name\n(default: None)"
  type: string?
  inputBinding:
    prefix: --kegg_download_date
- id: in_uniref_loc
  doc: "File path to uniref, if already downloaded\n(uniref90.fasta.gz) (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --uniref_loc
- id: in_uniref_version
  doc: 'UniRef version to download (default: 90)'
  type: long?
  inputBinding:
    prefix: --uniref_version
- id: in_skip_uniref
  doc: "Do not download and process uniref90. Saves time and\nmemory usage and does\
    \ not impact DRAM distillation\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --skip_uniref
- id: in_pfam_loc
  doc: "File path to pfam-A full file, if already downloaded\n(Pfam-A.full.gz) (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --pfam_loc
- id: in_pfam_hmm_dat
  doc: "pfam hmm .dat file to get PF descriptions, if already\ndownloaded (Pfam-A.hmm.dat.gz)\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --pfam_hmm_dat
- id: in_db_can_loc
  doc: "File path to dbCAN, if already downloaded (dbCAN-\nHMMdb-V8.txt) (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --dbcan_loc
- id: in_db_can_fam_activities
  doc: "CAZY family activities file, if already downloaded\n(CAZyDB.07312019.fam-activities.txt)\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --dbcan_fam_activities
- id: in_db_can_version
  doc: 'version of dbCAN to use (default: 8)'
  type: long?
  inputBinding:
    prefix: --dbcan_version
- id: in_vo_gdb_loc
  doc: "hmm file for vogdb, if already downloaded\n(vog.hmm.tar.gz) (default: None)"
  type: File?
  inputBinding:
    prefix: --vogdb_loc
- id: in_vog_annotations
  doc: "vogdb annotations file, if already downloaded\n(vog.annotations.tsv.gz) (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --vog_annotations
- id: in_viral_loc
  doc: "File path to merged viral protein faa, if already\ndownloaded (viral.x.protein.faa.gz)\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --viral_loc
- id: in_peptidase_loc
  doc: "File path to MEROPS peptidase fasta, if already\ndownloaded (pepunit.lib)\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --peptidase_loc
- id: in_genome_summary_form_loc
  doc: "File path to genome summary form,if already downloaded\n(default: None)"
  type: File?
  inputBinding:
    prefix: --genome_summary_form_loc
- id: in_module_step_form_loc
  doc: "File path to module step form, ifalready downloaded\n(default: None)"
  type: File?
  inputBinding:
    prefix: --module_step_form_loc
- id: in_etc_module_database_loc
  doc: "File path to etc module database, if already\ndownloaded (default: None)"
  type: File?
  inputBinding:
    prefix: --etc_module_database_loc
- id: in_function_heat_map_form_loc
  doc: "File path to function heatmap form, if already\ndownloaded (default: None)"
  type: File?
  inputBinding:
    prefix: --function_heatmap_form_loc
- id: in_branch
  doc: "git branch from which to download forms; THIS SHOULD\nNOT BE CHANGED BY REGULAR\
    \ USERS (default: master)"
  type: string?
  inputBinding:
    prefix: --branch
- id: in_keep_database_files
  doc: 'Keep unporcessed database files (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep_database_files
- id: in_threads
  doc: "Number of threads to use building mmseqs2 databases\n(default: 10)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: 'Make it talk more (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'output directory (default: .)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dram:1.1.1--py_0
cwlVersion: v1.1
baseCommand:
- DRAM-setup.py
- prepare_databases
