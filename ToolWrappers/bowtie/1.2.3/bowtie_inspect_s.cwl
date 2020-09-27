class: CommandLineTool
id: bowtie_inspect_s.cwl
inputs:
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
- id: in_e_slash_e_bwt_ref
  doc: Reconstruct reference from ebwt (slow, preserves colors)
  type: boolean
  inputBinding:
    prefix: -e/--ebwt-ref
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
- id: in_bowtie_inspect
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bowtie-inspect-s
