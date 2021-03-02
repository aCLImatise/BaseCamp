class: CommandLineTool
id: trim_alignments.cwl
inputs:
- id: in_ref_name
  doc: "Reference to process, only needed if bams contain\nmultiple references. (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --ref_name
- id: in_output_prefix
  doc: 'Prefix for outputs. (default: trimmed)'
  type: string?
  inputBinding:
    prefix: --output_prefix
- id: in_reference_fast_a
  doc: "Reference fasta to trim to alignment window. (default:\nNone)\n"
  type: string?
  inputBinding:
    prefix: --reference_fasta
- id: in_bams
  doc: input bam files
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pomoxis:0.3.6--py_0
cwlVersion: v1.1
baseCommand:
- trim_alignments
