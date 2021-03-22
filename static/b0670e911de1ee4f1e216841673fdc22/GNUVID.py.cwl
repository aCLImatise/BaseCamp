class: CommandLineTool
id: GNUVID.py.cwl
inputs:
- id: in_mk_database
  doc: "you have to provide path to a folder of multiple fna\nfiles for compression"
  type: File?
  inputBinding:
    prefix: --mkdatabase
- id: in_database
  doc: you have to provide path to your compressed database
  type: File?
  inputBinding:
    prefix: --database
- id: in_list_order
  doc: "you have to provide path to txt file with isolates\nordered by collection\
    \ date"
  type: File?
  inputBinding:
    prefix: --list_order
- id: in_country_continent
  doc: "you have to provide path to csv file with a country to\ncontinent assignment,\
    \ csv of first three columns from\nGISAID acknowledgment table"
  type: File?
  inputBinding:
    prefix: --country_continent
- id: in_output_folder
  doc: "Database output prefix to be created for results\n(default: timestamped GNUVID_results\
    \ in the current\ndirectory)"
  type: Directory?
  inputBinding:
    prefix: --output_folder
- id: in_force
  doc: "Force overwriting existing results folder assigned\nwith -o (default: off)"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_prefix
  doc: "Prefix for output compressed database (default:\nGNUVID)"
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_quiet
  doc: No screen output [default OFF]
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_reference
  doc: full path to the reference (MN908947.3_cds.fna)
  type: string
  inputBinding:
    position: 0
- id: in_query_fna
  doc: "Query Whole Genome or CDS (for the 10 ORFs) Nucleotide\nFASTA file/s to analyze\
    \ (.fna)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: "Database output prefix to be created for results\n(default: timestamped GNUVID_results\
    \ in the current\ndirectory)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gnuvid:2.2--0
cwlVersion: v1.1
baseCommand:
- GNUVID.py
