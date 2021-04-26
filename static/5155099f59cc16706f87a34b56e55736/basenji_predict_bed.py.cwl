class: CommandLineTool
id: basenji_predict_bed.py.cwl
inputs:
- id: in_commaseparated_list_write
  doc: Comma-separated list of target indexes to write BigWigs
  type: string?
  inputBinding:
    prefix: -b
- id: in_embed_sequences_using
  doc: Embed sequences using the specified layer index.
  type: string?
  inputBinding:
    prefix: -e
- id: in_genome_fasta_sequences
  doc: 'Genome FASTA for sequences [Default: none]'
  type: string?
  inputBinding:
    prefix: -f
- id: in_chromosome_length_information
  doc: 'Chromosome length information [Default: none]'
  type: File?
  inputBinding:
    prefix: -g
- id: in_prediction_site_length
  doc: 'Prediction site length. [Default: params.seq_length]'
  type: long?
  inputBinding:
    prefix: -l
- id: in_output_directory
  doc: 'Output directory [Default: pred_out]'
  type: Directory?
  inputBinding:
    prefix: -o
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
- id: in_sum_site_predictions
  doc: 'Sum site predictions [Default: False]'
  type: boolean?
  inputBinding:
    prefix: -s
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
  doc: 'Output directory [Default: pred_out]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- basenji_predict_bed.py
