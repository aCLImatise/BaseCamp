class: CommandLineTool
id: deadzones.cwl
inputs:
- id: in_output
  doc: 'Name of output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: -output
- id: in_km_er
  doc: Width of k-mers
  type: boolean?
  inputBinding:
    prefix: -kmer
- id: in_prefix
  doc: prefix length
  type: boolean?
  inputBinding:
    prefix: -prefix
- id: in_bisulfite
  doc: get bisulfite deadzones
  type: boolean?
  inputBinding:
    prefix: -bisulfite
- id: in_ag_wild
  doc: A/G wildcard for bisulfite
  type: boolean?
  inputBinding:
    prefix: -ag-wild
- id: in_suffix
  doc: suffix of FASTA files (assumes -c indicates dir)
  type: boolean?
  inputBinding:
    prefix: -suffix
- id: in_verbose
  doc: print more run information
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_about
  doc: print about message
  type: boolean?
  inputBinding:
    prefix: -about
- id: in_one_or_more_fast_a_chrom_files
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Name of output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- deadzones
