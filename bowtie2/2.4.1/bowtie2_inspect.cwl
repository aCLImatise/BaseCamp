class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bowtie2_inspect.cwl
inputs:
- id: large_index
  doc: force inspection of the 'large' index, even if a 'small' one is present.
  type: boolean
  inputBinding:
    prefix: --large-index
- id: debug
  doc: use the debug binary; slower, assertions enabled
  type: boolean
  inputBinding:
    prefix: --debug
- id: sanitized
  doc: use sanitized binary; slower, uses ASan and/or UBSan
  type: boolean
  inputBinding:
    prefix: --sanitized
- id: verbose
  doc: log the issued command
  type: boolean
  inputBinding:
    prefix: --verbose
- id: a_slash_across
  doc: 'Number of characters across in FASTA output (default: 60)'
  type: long
  inputBinding:
    prefix: -a/--across
- id: n_slash_names
  doc: Print reference sequence names only
  type: boolean
  inputBinding:
    prefix: -n/--names
- id: s_slash_summary
  doc: Print summary incl. ref names, lengths, index properties
  type: boolean
  inputBinding:
    prefix: -s/--summary
- id: v_slash_verbose
  doc: Verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -v/--verbose
- id: h_slash_help
  doc: print detailed description of tool and its options
  type: boolean
  inputBinding:
    prefix: -h/--help
outputs: []
cwlVersion: v1.1
baseCommand:
- bowtie2-inspect
