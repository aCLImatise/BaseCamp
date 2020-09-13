class: CommandLineTool
id: ../../../calc_probe_hit_from_sam.py.cwl
inputs:
- id: in_start_base
  doc: ''
  type: string
  inputBinding:
    prefix: --start_base
- id: in_end_base
  doc: ''
  type: string
  inputBinding:
    prefix: --end_base
- id: in_gtf
  doc: Input is GTF instead of SAM
  type: boolean
  inputBinding:
    prefix: --gtf
- id: in_output
  doc: "Output filename (default: stdout)\n"
  type: File
  inputBinding:
    prefix: --output
- id: in_var_4
  doc: input_fasta_or_fastq
  type: string
  inputBinding:
    position: 0
- id: in_positional_arguments
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 1
- id: in_var_6
  doc: input_fasta_or_fastq
  type: string
  inputBinding:
    position: 2
- id: in_optional_arguments
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output filename (default: stdout)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- calc_probe_hit_from_sam.py
