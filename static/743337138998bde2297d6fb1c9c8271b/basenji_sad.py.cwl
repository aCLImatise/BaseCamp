class: CommandLineTool
id: basenji_sad.py.cwl
inputs:
- id: in_genome_fasta_sequences
  doc: "Genome FASTA for sequences [Default:\n/usr/local/share/basenji//data/hg19.fa]"
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
- id: in_stats
  doc: 'Comma-separated list of stats to save. [Default: SAD]'
  type: string?
  inputBinding:
    prefix: --stats
- id: in_file_specifying_indexes
  doc: File specifying target indexes and labels in table
  type: File?
  inputBinding:
    prefix: -t
- id: in_compute_sed_penultimate
  doc: 'Compute SED in the penultimate layer [Default: False]'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_format
  doc: --ti=TRACK_INDEXES   Comma-separated list of target indexes to output BigWig
  type: string
  inputBinding:
    position: 0
- id: in_tracks
  doc: '--threads            Run CPU math and output in a separate thread [Default:'
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
- basenji_sad.py
