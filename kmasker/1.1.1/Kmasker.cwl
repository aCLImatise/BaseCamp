#!/usr/bin/env cwl-runner

baseCommand:
- Kmasker
class: CommandLineTool
cwlVersion: v1.0
id: kmasker
inputs:
- doc: show complete list of private and external k-mer indices
  id: show_repository
  inputBinding:
    prefix: --show_repository
  type: boolean
- doc: show details for a requested kindex
  id: show_details
  inputBinding:
    prefix: --show_details
  type: boolean
- doc: show path Kmaskers looks for constructed kindex
  id: show_path
  inputBinding:
    prefix: --show_path
  type: boolean
- doc: remove kindex from repository
  id: remove_k_index
  inputBinding:
    prefix: --remove_kindex
  type: boolean
- doc: change path to private repository
  id: set_private_path
  inputBinding:
    prefix: --set_private_path
  type: boolean
- doc: change path to external repository [readonly]
  id: set_external_path
  inputBinding:
    prefix: --set_external_path
  type: boolean
- doc: submit individual parameter to Kmasker eg. pctgap, minseed, mingff (see documentation!)
  id: expert_setting_km_asker
  inputBinding:
    prefix: --expert_setting_kmasker
  type: boolean
- doc: submit individual parameter to jellyfish (e.g. on memory usage  for index construction)
  id: expert_setting_jelly
  inputBinding:
    prefix: --expert_setting_jelly
  type: boolean
- doc: submit individual parameter to blast (e.g. '-evalue')
  id: expert_setting_blast
  inputBinding:
    prefix: --expert_setting_blast
  type: boolean
- doc: set number of threads [4]
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
- doc: force additional BED output [off]
  id: bed
  inputBinding:
    prefix: --bed
  type: boolean
- doc: set specific user configuration file [/home/ubuntu/.kmasker_user.config]
  id: user_conf
  inputBinding:
    prefix: --user_conf
  type: boolean
- doc: set specific global configuration file [/tmp/tmp75zbp68n/etc/kmasker.config]
  id: global_conf
  inputBinding:
    prefix: --global_conf
  type: boolean
- doc: shows the detected/configured path for all used applications
  id: check_install
  inputBinding:
    prefix: --check_install
  type: boolean
- doc: set a user specified process id
  id: setid
  inputBinding:
    prefix: --setid
  type: boolean
- doc: create a process id that is unique for this host (e.g. for use in cluster environments)
  id: long_id
  inputBinding:
    prefix: --long_id
  type: boolean
- doc: sets the location of temporary files [./temp/]
  id: temp
  inputBinding:
    prefix: --temp
  type: boolean
- doc: enables verbose output and keeps log files
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'For use with krispr: Build a new krispr model. You have to specifiy a .csv
    after this paramter. Details at https://git.io/JecYI. You can use -m to specify
    the coverage threshold.'
  id: make_model
  inputBinding:
    prefix: --make_model
  type: boolean
