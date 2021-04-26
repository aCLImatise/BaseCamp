class: CommandLineTool
id: basenji_data_hic_write.py.cwl
inputs:
- id: in_genome_index
  doc: Genome index
  type: string?
  inputBinding:
    prefix: -g
- id: in_sequence_start_index
  doc: 'Sequence start index [Default: 0]'
  type: long?
  inputBinding:
    prefix: -s
- id: in_sequence_end_index
  doc: 'Sequence end index [Default: none]'
  type: string?
  inputBinding:
    prefix: -e
- id: in_te
  doc: 'Extend targets vector [Default: none]'
  type: string?
  inputBinding:
    prefix: --te
- id: in_ts
  doc: 'Write targets into vector starting at index [Default: 0'
  type: long?
  inputBinding:
    prefix: --ts
- id: in_unmappable_array_numpy
  doc: Unmappable array numpy file
  type: File?
  inputBinding:
    prefix: -u
- id: in_u_map_set
  doc: "Sequence distribution value to set unmappable positions\nto, eg 0.25.\n"
  type: double?
  inputBinding:
    prefix: --umap_set
- id: in_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seqs_bed_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_seqs_cov_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_tfr_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- basenji_data_hic_write.py
