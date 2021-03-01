class: CommandLineTool
id: bowtie_inspect.cwl
inputs:
- id: in_across
  doc: 'Number of characters across in FASTA output (default: 60)'
  type: long?
  inputBinding:
    prefix: --across
- id: in_names
  doc: Print reference sequence names only
  type: boolean?
  inputBinding:
    prefix: --names
- id: in_summary
  doc: Print summary incl. ref names, lengths, index properties
  type: boolean?
  inputBinding:
    prefix: --summary
- id: in_e_bwt_ref
  doc: Reconstruct reference from ebwt (slow, preserves colors)
  type: boolean?
  inputBinding:
    prefix: --ebwt-ref
- id: in_verbose
  doc: Verbose output (for debugging)
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bowtie-inspect
