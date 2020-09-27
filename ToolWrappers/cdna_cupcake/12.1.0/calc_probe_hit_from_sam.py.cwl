class: CommandLineTool
id: calc_probe_hit_from_sam.py.cwl
inputs:
- id: in_start_base
  doc: "--end_base {0,1}\n[-o OUTPUT]\nbed_filename\ninput_fasta_or_fastq\nsam_or_gtf"
  type: string
  inputBinding:
    prefix: --start_base
- id: in_gtf
  doc: Input is GTF instead of SAM
  type: boolean
  inputBinding:
    prefix: --gtf
- id: in_end_base
  doc: End base is 0 or 1-based index
  type: string
  inputBinding:
    prefix: --end_base
- id: in_output
  doc: "Output filename (default: stdout)\n"
  type: File
  inputBinding:
    prefix: --output
- id: in_sam_or_gtf
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
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
