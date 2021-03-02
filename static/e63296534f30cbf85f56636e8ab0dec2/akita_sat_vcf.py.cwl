class: CommandLineTool
id: akita_sat_vcf.py.cwl
inputs:
- id: in_genome_fasta_sequences
  doc: "Genome FASTA for sequences [Default:\n/usr/local/share/basenji//data/hg19.fa]"
  type: long?
  inputBinding:
    prefix: -f
- id: in_draw_sequence_logo
  doc: "Draw a sequence logo for the gain score, too [Default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_length_centered_sequence
  doc: 'Length of centered sequence to mutate [Default: 200]'
  type: long?
  inputBinding:
    prefix: -l
- id: in_minimum_heatmap_limit
  doc: 'Minimum heatmap limit [Default: 0.1]'
  type: long?
  inputBinding:
    prefix: -m
- id: in_load_predictions_files
  doc: 'Load the predictions from .npy files [Default: False]'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_output_directory
  doc: 'Output directory [Default: sat_vcf]'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_rc
  doc: "Ensemble forward and reverse complement predictions\n[Default: False]"
  type: boolean?
  inputBinding:
    prefix: --rc
- id: in_shifts
  doc: 'Ensemble prediction shifts [Default: 0]'
  type: long?
  inputBinding:
    prefix: --shifts
- id: in_file_specifying_indexes
  doc: File specifying target indexes and labels in table format
  type: File?
  inputBinding:
    prefix: -t
- id: in_figure_width
  doc: 'Figure width [Default: 20]'
  type: long?
  inputBinding:
    prefix: -w
- id: in_params_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_model_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: 'Output directory [Default: sat_vcf]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5--py_0
cwlVersion: v1.1
baseCommand:
- akita_sat_vcf.py
