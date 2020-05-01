#!/usr/bin/env cwl-runner

baseCommand:
- InclusionExclusionListCreator
class: CommandLineTool
cwlVersion: v1.0
id: inclusionexclusionlistcreator
inputs:
- doc: "Inclusion list input file in FASTA or featureXML format. (valid formats: 'featureXML',\
    \ 'fasta')"
  id: include
  inputBinding:
    prefix: -include
  type: File
- doc: "Exclusion list input file in featureXML, idXML or FASTA format. (valid formats:\
    \ 'featureXML', 'idXML', 'fasta')"
  id: exclude
  inputBinding:
    prefix: -exclude
  type: File
- doc: "*                 Output file (tab delimited csv file). (valid formats: 'csv')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "RTModel file used for the rt prediction of peptides in FASTA files. (valid\
    \ formats: 'txt')"
  id: rt_model
  inputBinding:
    prefix: -rt_model
  type: File
- doc: "PTModel file used for the pt prediction of peptides in FASTA files (only needed\
    \ for inclusion_strategy PreotinBased_LP). (valid formats: 'txt')"
  id: pt_model
  inputBinding:
    prefix: -pt_model
  type: File
- doc: "List containing the charge states to be considered for the inclusion list\
    \ compounds, space separated. (min: '1')"
  id: inclusion_charges
  inputBinding:
    prefix: -inclusion_charges
  type: string
- doc: "Strategy to be used for selection (default: 'ALL' valid: 'FeatureBased_LP',\
    \ 'ProteinBased_LP', 'ALL')"
  id: inclusion_strategy
  inputBinding:
    prefix: -inclusion_strategy
  type: string
- doc: "List containing the charge states to be considered for the exclusion list\
    \ compounds (for idXML and FASTA input), space separated. (min: '1')"
  id: exclusion_charges
  inputBinding:
    prefix: -exclusion_charges
  type: string
- doc: "File containing the raw data (only needed for FeatureBased_LP). (valid formats:\
    \ 'mzML')"
  id: raw_data
  inputBinding:
    prefix: -raw_data
  type: string
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
- doc: Inclusion/Exclusion algorithm section
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
