class: CommandLineTool
id: basenji_sat_bed.py.cwl
inputs:
- id: in_nucleotides_downstream_mutate
  doc: "Nucleotides downstream of center sequence to mutate\n[Default: 0]"
  type: long?
  inputBinding:
    prefix: -d
- id: in_genome_fasta_sequences
  doc: 'Genome FASTA for sequences [Default: none]'
  type: string?
  inputBinding:
    prefix: -f
- id: in_length_center_sequence
  doc: 'Length of center sequence to mutate [Default: 0]'
  type: long?
  inputBinding:
    prefix: -l
- id: in_output_directory
  doc: 'Output directory [Default: sat_mut]'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_plots
  doc: 'Make heatmap plots [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --plots
- id: in_number_processes_passed
  doc: Number of processes, passed by multi script
  type: long?
  inputBinding:
    prefix: -p
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
- id: in_stats
  doc: 'Comma-separated list of stats to save. [Default: sum]'
  type: string?
  inputBinding:
    prefix: --stats
- id: in_file_specifying_indexes
  doc: File specifying target indexes and labels in table format
  type: File?
  inputBinding:
    prefix: -t
- id: in_nucleotides_upstream_center
  doc: "Nucleotides upstream of center sequence to mutate\n[Default: 0]\n"
  type: long?
  inputBinding:
    prefix: -u
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
- id: in_bed_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: 'Output directory [Default: sat_mut]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- basenji_sat_bed.py
