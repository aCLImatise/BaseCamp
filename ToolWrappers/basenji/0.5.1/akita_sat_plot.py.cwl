class: CommandLineTool
id: akita_sat_plot.py.cwl
inputs:
- id: in_figure_width
  doc: 'Figure width [Default: 20]'
  type: long?
  inputBinding:
    prefix: -f
- id: in_length_centered_sequence
  doc: 'Length of centered sequence to mutate [Default: 300]'
  type: long?
  inputBinding:
    prefix: -l
- id: in_minimum_heatmap_limit
  doc: 'Minimum heatmap limit [Default: 0.1]'
  type: long?
  inputBinding:
    prefix: -m
- id: in_output_directory
  doc: 'Output directory [Default: sat_plot]'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_png
  doc: 'Write PNG as opposed to PDF [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --png
- id: in_random_number_generator
  doc: 'Random number generator seed [Default: 1]'
  type: long?
  inputBinding:
    prefix: -r
- id: in_sample_n_sequences
  doc: Sample N sequences from the set [Default:none]
  type: string?
  inputBinding:
    prefix: -s
- id: in_stat
  doc: 'SAD stat to display [Default: sqdiff]'
  type: string?
  inputBinding:
    prefix: --stat
- id: in_file_specifying_indexes
  doc: File specifying target indexes and labels in table format
  type: File?
  inputBinding:
    prefix: -t
- id: in_scores_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: 'Output directory [Default: sat_plot]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- akita_sat_plot.py
