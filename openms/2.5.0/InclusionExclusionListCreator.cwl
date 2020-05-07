class: CommandLineTool
id: InclusionExclusionListCreator.cwl
inputs:
- id: include
  doc: "Inclusion list input file in FASTA or featureXML format. (valid formats: 'featureXML',\
    \ 'fasta')"
  type: File
  inputBinding:
    prefix: -include
- id: exclude
  doc: "Exclusion list input file in featureXML, idXML or FASTA format. (valid formats:\
    \ 'featureXML', 'idXML', 'fasta')"
  type: File
  inputBinding:
    prefix: -exclude
- id: out
  doc: "*                 Output file (tab delimited csv file). (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -out
- id: rt_model
  doc: "RTModel file used for the rt prediction of peptides in FASTA files. (valid\
    \ formats: 'txt')"
  type: File
  inputBinding:
    prefix: -rt_model
- id: pt_model
  doc: "PTModel file used for the pt prediction of peptides in FASTA files (only needed\
    \ for inclusion_strategy PreotinBased_LP). (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -pt_model
- id: inclusion_charges
  doc: "List containing the charge states to be considered for the inclusion list\
    \ compounds, space separated. (min: '1')"
  type: string
  inputBinding:
    prefix: -inclusion_charges
- id: inclusion_strategy
  doc: "Strategy to be used for selection (default: 'ALL' valid: 'FeatureBased_LP',\
    \ 'ProteinBased_LP', 'ALL')"
  type: string
  inputBinding:
    prefix: -inclusion_strategy
- id: exclusion_charges
  doc: "List containing the charge states to be considered for the exclusion list\
    \ compounds (for idXML and FASTA input), space separated. (min: '1')"
  type: string
  inputBinding:
    prefix: -exclusion_charges
- id: raw_data
  doc: "File containing the raw data (only needed for FeatureBased_LP). (valid formats:\
    \ 'mzML')"
  type: string
  inputBinding:
    prefix: -raw_data
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
- id: algorithm
  doc: Inclusion/Exclusion algorithm section
  type: boolean
  inputBinding:
    prefix: '- algorithm'
- id: http
  doc: ://www.openms.de/documentation/TOPP_InclusionExclusionListCreator.html
  type: boolean
  inputBinding:
    prefix: '- http'
outputs: []
cwlVersion: v1.1
baseCommand:
- InclusionExclusionListCreator
