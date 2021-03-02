class: CommandLineTool
id: find_footprints.sh.cwl
inputs:
- id: in_bam_file
  doc: \
  type: string
  inputBinding:
    position: 0
- id: in_chrom_sizes
  doc: \
  type: string
  inputBinding:
    position: 1
- id: in_motif_coords
  doc: \
  type: string
  inputBinding:
    position: 2
- id: in_genome_fast_a
  doc: \
  type: string
  inputBinding:
    position: 3
- id: in_factor_name
  doc: \
  type: string
  inputBinding:
    position: 4
- id: in_bias_file
  doc: \
  type: string
  inputBinding:
    position: 5
- id: in_peak_file
  doc: \
  type: string
  inputBinding:
    position: 6
- id: in_background
  doc: \
  type: string
  inputBinding:
    position: 0
- id: in_fixed_bg
  doc: 'The arguments are explained below:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- find_footprints.sh
