class: CommandLineTool
id: bowtie2_inspect.cwl
inputs:
- id: in_large_index
  doc: "force inspection of the 'large' index, even if a\n'small' one is present."
  type: boolean
  inputBinding:
    prefix: --large-index
- id: in_debug
  doc: use the debug binary; slower, assertions enabled
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_sanitized
  doc: use sanitized binary; slower, uses ASan and/or UBSan
  type: boolean
  inputBinding:
    prefix: --sanitized
- id: in_verbose
  doc: log the issued command
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_a_slash_across
  doc: 'Number of characters across in FASTA output (default: 60)'
  type: long
  inputBinding:
    prefix: -a/--across
- id: in_n_slash_names
  doc: Print reference sequence names only
  type: boolean
  inputBinding:
    prefix: -n/--names
- id: in_s_slash_summary
  doc: Print summary incl. ref names, lengths, index properties
  type: boolean
  inputBinding:
    prefix: -s/--summary
- id: in_v_slash_verbose
  doc: Verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -v/--verbose
- id: in_h_slash_help
  doc: print detailed description of tool and its options
  type: boolean
  inputBinding:
    prefix: -h/--help
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bowtie2-inspect
