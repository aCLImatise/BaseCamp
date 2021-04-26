class: CommandLineTool
id: sonnet_sad.py.cwl
inputs:
- id: in_slice_center_positions
  doc: 'Slice center positions [Default: none]'
  type: string?
  inputBinding:
    prefix: -c
- id: in_genome_fasta_sequences
  doc: "Genome FASTA for sequences [Default:\n/usr/local/share/basenji//data/hg38.fa]"
  type: long?
  inputBinding:
    prefix: -f
- id: in_normalize_sad_scores
  doc: Normalize SAD scores
  type: File?
  inputBinding:
    prefix: -n
- id: in_output_directory_plots
  doc: 'Output directory for tables and plots [Default: sad]'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_number_processes_passed
  doc: Number of processes, passed by multi script
  type: long?
  inputBinding:
    prefix: -p
- id: in_pseudo
  doc: 'Log2 pseudocount [Default: 1]'
  type: long?
  inputBinding:
    prefix: --pseudo
- id: in_rc
  doc: "Average forward and reverse complement predictions\n[Default: False]"
  type: boolean?
  inputBinding:
    prefix: --rc
- id: in_shifts
  doc: 'Ensemble prediction shifts [Default: 0]'
  type: long?
  inputBinding:
    prefix: --shifts
- id: in_species
  doc: 'Comma-separated list of stats to save. [Default: SAD]'
  type: string?
  inputBinding:
    prefix: --species
- id: in_file_specifying_indexes
  doc: "File specifying target indexes and labels in table\nformat\n"
  type: File?
  inputBinding:
    prefix: -t
- id: in_model
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_plots
  doc: 'Output directory for tables and plots [Default: sad]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_plots)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- sonnet_sad.py
