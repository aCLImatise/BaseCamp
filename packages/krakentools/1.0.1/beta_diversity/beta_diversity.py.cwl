class: CommandLineTool
id: beta_diversity.py.cwl
inputs:
- id: in_input_files
  doc: "Input files (one per community) for which to compare\nfor bray-curtis dissimiliarity\
    \ metrics"
  type: string[]
  inputBinding:
    prefix: --input-files
- id: in_type
  doc: "Type of input file[s]: single, simple [tab-delimited,\nspecify --cols], bracken,\
    \ kreport, kreport2, krona.\nSee docs for details"
  type: string?
  inputBinding:
    prefix: --type
- id: in_columns
  doc: "Specify category/counts separated by single comma:\ncat,counts (1 = first\
    \ col)"
  type: long?
  inputBinding:
    prefix: --columns
- id: in_level
  doc: "For Kraken or Krona files, taxonomy level for which to\ncompare samples. Default:\
    \ all\n"
  type: string?
  inputBinding:
    prefix: --level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- beta_diversity.py
