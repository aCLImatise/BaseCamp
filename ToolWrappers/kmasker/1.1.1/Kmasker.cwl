class: CommandLineTool
id: Kmasker.cwl
inputs:
- id: in_build
  doc: construction of new index (requires --seq)
  type: boolean?
  inputBinding:
    prefix: --build
- id: in_run
  doc: perform analysis and masking (requires --fasta)
  type: boolean?
  inputBinding:
    prefix: --run
- id: in_explore
  doc: perform downstream analysis with constructed index and detected repeats
  type: boolean?
  inputBinding:
    prefix: --explore
- id: in_show_repository
  doc: show complete list of private and external k-mer indices
  type: boolean?
  inputBinding:
    prefix: --show_repository
- id: in_show_details
  doc: show details for a requested kindex
  type: boolean?
  inputBinding:
    prefix: --show_details
- id: in_show_path
  doc: show path Kmaskers looks for constructed kindex
  type: boolean?
  inputBinding:
    prefix: --show_path
- id: in_remove_k_index
  doc: remove kindex from repository
  type: boolean?
  inputBinding:
    prefix: --remove_kindex
- id: in_set_private_path
  doc: change path to private repository
  type: boolean?
  inputBinding:
    prefix: --set_private_path
- id: in_set_external_path
  doc: change path to external repository [readonly]
  type: boolean?
  inputBinding:
    prefix: --set_external_path
- id: in_expert_setting_km_asker
  doc: "submit individual parameter to Kmasker eg. pctgap,\nminseed, mingff (see documentation!)"
  type: boolean?
  inputBinding:
    prefix: --expert_setting_kmasker
- id: in_expert_setting_jelly
  doc: "submit individual parameter to jellyfish (e.g. on memory usage\nfor index\
    \ construction)"
  type: boolean?
  inputBinding:
    prefix: --expert_setting_jelly
- id: in_expert_setting_blast
  doc: submit individual parameter to blast (e.g. '-evalue')
  type: boolean?
  inputBinding:
    prefix: --expert_setting_blast
- id: in_threads
  doc: set number of threads [4]
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_bed
  doc: force additional BED output [off]
  type: boolean?
  inputBinding:
    prefix: --bed
- id: in_user_conf
  doc: set specific user configuration file [/root/.kmasker_user.config]
  type: boolean?
  inputBinding:
    prefix: --user_conf
- id: in_global_conf
  doc: set specific global configuration file [/usr/local/etc/kmasker.config]
  type: boolean?
  inputBinding:
    prefix: --global_conf
- id: in_check_install
  doc: shows the detected/configured path for all used applications
  type: boolean?
  inputBinding:
    prefix: --check_install
- id: in_setid
  doc: set a user specified process id
  type: boolean?
  inputBinding:
    prefix: --setid
- id: in_long_id
  doc: create a process id that is unique for this host (e.g. for use in cluster environments)
  type: boolean?
  inputBinding:
    prefix: --long_id
- id: in_temp
  doc: sets the location of temporary files [./temp/]
  type: boolean?
  inputBinding:
    prefix: --temp
- id: in_verbose
  doc: enables verbose output and keeps log files
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_make_model
  doc: 'For use with krispr: Build a new krispr model. You have to specifiy a .csv
    after this paramter. Details at https://git.io/JecYI. You can use -m to specify
    the coverage threshold.'
  type: boolean?
  inputBinding:
    prefix: --make_model
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Kmasker
