class: CommandLineTool
id: sambamba_slice.cwl
inputs:
- id: in_output_filename
  doc: output BAM or FASTA filename
  type: File?
  inputBinding:
    prefix: --output-filename
- id: in_regions
  doc: output only reads overlapping one of regions from the BED file
  type: File?
  inputBinding:
    prefix: --regions
- id: in_fast_a_input
  doc: "specify that input is in FASTA format\n"
  type: boolean?
  inputBinding:
    prefix: --fasta-input
- id: in_samba_mba_slice
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_bam_vertical_line_input_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: output BAM or FASTA filename
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename)
- id: out_regions
  doc: output only reads overlapping one of regions from the BED file
  type: File?
  outputBinding:
    glob: $(inputs.in_regions)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sambamba:0.8.0--h984e79f_0
cwlVersion: v1.1
baseCommand:
- sambamba
- slice
