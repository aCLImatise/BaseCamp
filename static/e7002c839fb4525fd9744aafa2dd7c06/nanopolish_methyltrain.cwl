class: CommandLineTool
id: nanopolish_methyltrain.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_models_fof_n
  doc: read the models to be trained from the FOFN
  type: File?
  inputBinding:
    prefix: --models-fofn
- id: in_train_km_ers
  doc: train methylated, unmethylated or all kmers
  type: string?
  inputBinding:
    prefix: --train-kmers
- id: in_calibrate
  doc: recalibrate aligned reads to model before training
  type: boolean?
  inputBinding:
    prefix: --calibrate
- id: in_no_update_models
  doc: do not write out trained models
  type: boolean?
  inputBinding:
    prefix: --no-update-models
- id: in_output_scores
  doc: optionally output read scores during training
  type: boolean?
  inputBinding:
    prefix: --output-scores
- id: in_reads
  doc: the ONT reads are in fasta FILE
  type: File?
  inputBinding:
    prefix: --reads
- id: in_bam
  doc: the reads aligned to the genome assembly are in bam FILE
  type: File?
  inputBinding:
    prefix: --bam
- id: in_genome
  doc: the reference genome is in FILE
  type: File?
  inputBinding:
    prefix: --genome
- id: in_threads
  doc: 'use NUM threads (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_filter_policy
  doc: filter reads for [R7] or [R9] project
  type: long?
  inputBinding:
    prefix: --filter-policy
- id: in_out_suffix
  doc: name output files like <strand>.out_suffix
  type: string?
  inputBinding:
    prefix: --out-suffix
- id: in_out_fof_n
  doc: write the names of the output models into FILE
  type: File?
  inputBinding:
    prefix: --out-fofn
- id: in_rounds
  doc: number of training rounds to perform
  type: long?
  inputBinding:
    prefix: --rounds
- id: in_max_reads
  doc: stop after processing NUM reads in each round
  type: long?
  inputBinding:
    prefix: --max-reads
- id: in_progress
  doc: print out a progress message
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_std_v
  doc: enable stdv modelling
  type: boolean?
  inputBinding:
    prefix: --stdv
- id: in_max_events
  doc: 'use NUM events for training (default: 1000)'
  type: long?
  inputBinding:
    prefix: --max-events
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_fof_n
  doc: write the names of the output models into FILE
  type: File?
  outputBinding:
    glob: $(inputs.in_out_fof_n)
hints: []
cwlVersion: v1.1
baseCommand:
- nanopolish
- methyltrain
