class: CommandLineTool
id: InclusionExclusionListCreator.cwl
inputs:
- id: in_include
  doc: "Inclusion list input file in FASTA or featureXML format. (valid formats: 'featureXML',\
    \ 'fasta')"
  type: File?
  inputBinding:
    prefix: -include
- id: in_exclude
  doc: "Exclusion list input file in featureXML, idXML or FASTA format. (valid formats:\
    \ 'featureXML', 'idXML', 'fasta')"
  type: File?
  inputBinding:
    prefix: -exclude
- id: in_out
  doc: "*                 Output file (tab delimited csv file). (valid formats: 'csv')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_rt_model
  doc: "RTModel file used for the rt prediction of peptides in FASTA files. (valid\
    \ formats: 'txt')"
  type: File?
  inputBinding:
    prefix: -rt_model
- id: in_pt_model
  doc: "PTModel file used for the pt prediction of peptides in FASTA files (only needed\
    \ for inclusion_strategy PreotinBased_LP). (valid formats: 'txt')"
  type: File?
  inputBinding:
    prefix: -pt_model
- id: in_inclusion_charges
  doc: "List containing the charge states to be considered for the inclusion list\
    \ compounds, space separated. (min: '1')"
  type: long?
  inputBinding:
    prefix: -inclusion_charges
- id: in_inclusion_strategy
  doc: "Strategy to be used for selection (default: 'ALL' valid: 'FeatureBased_LP',\
    \ 'ProteinBased_LP', 'ALL')"
  type: string?
  inputBinding:
    prefix: -inclusion_strategy
- id: in_exclusion_charges
  doc: "List containing the charge states to be considered for the exclusion list\
    \ compounds (for idXML and FASTA input), space separated. (min: '1')"
  type: long?
  inputBinding:
    prefix: -exclusion_charges
- id: in_raw_data
  doc: "File containing the raw data (only needed for FeatureBased_LP). (valid formats:\
    \ 'mzML')"
  type: File?
  inputBinding:
    prefix: -raw_data
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                 Output file (tab delimited csv file). (valid formats: 'csv')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- InclusionExclusionListCreator
