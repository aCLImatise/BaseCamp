class: CommandLineTool
id: imsindel.cwl
inputs:
- id: in_bam
  doc: /path/to/foo.bam
  type: boolean?
  inputBinding:
    prefix: --bam
- id: in_out_d
  doc: /path/to/outoput-dir
  type: File?
  inputBinding:
    prefix: --outd
- id: in_in_del_size
  doc: indel-size
  type: long?
  inputBinding:
    prefix: --indelsize
- id: in_re_ffa
  doc: /path/to/ref.fa
  type: boolean?
  inputBinding:
    prefix: --reffa
- id: in_gl_search
  doc: '[glsearch36]'
  type: boolean?
  inputBinding:
    prefix: --glsearch
- id: in_sam_tools
  doc: '[samtools]'
  type: boolean?
  inputBinding:
    prefix: --samtools
- id: in_output_consensus_seq
  doc: /path/to/output-dir
  type: File?
  inputBinding:
    prefix: --output-consensus-seq
- id: in_exclude_region
  doc: /path/to/exclude-list
  type: boolean?
  inputBinding:
    prefix: --exclude-region
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_consensus_seq
  doc: /path/to/output-dir
  type: File?
  outputBinding:
    glob: $(inputs.in_output_consensus_seq)
hints: []
cwlVersion: v1.1
baseCommand:
- imsindel
