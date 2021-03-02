class: CommandLineTool
id: amptk_lulu.cwl
inputs:
- id: in_otu_table
  doc: Input OTU table (Required)
  type: boolean?
  inputBinding:
    prefix: --otu_table
- id: in_fast_a
  doc: Input OTUs in FASTA format (Required)
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_out
  doc: 'Output base name. Default: input basename'
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_min_ratio_type
  doc: 'Minimum ratio threshold. Default: min [min,avg]'
  type: boolean?
  inputBinding:
    prefix: --min_ratio_type
- id: in_min_ratio
  doc: 'Minimum ratio. Default: 1'
  type: boolean?
  inputBinding:
    prefix: --min_ratio
- id: in_min_match
  doc: 'Minimum match pident (%%). Default: 84'
  type: boolean?
  inputBinding:
    prefix: --min_match
- id: in_min_relative_co_occurence
  doc: 'relative co-occurance (%%): Default: 95'
  type: long?
  inputBinding:
    prefix: --min_relative_cooccurence
- id: in_debug
  doc: Keep intermediate files.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/amptk:1.5.1--py_1
cwlVersion: v1.1
baseCommand:
- amptk
- lulu
