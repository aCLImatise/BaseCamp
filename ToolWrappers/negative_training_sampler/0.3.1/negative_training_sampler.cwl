class: CommandLineTool
id: negative_training_sampler.cwl
inputs:
- id: in_label_file
  doc: Input bed file with labeled regions  [required]
  type: File?
  inputBinding:
    prefix: --label-file
- id: in_reference_file
  doc: "Input genome reference in fasta format\n[required]"
  type: File?
  inputBinding:
    prefix: --reference-file
- id: in_genome_file
  doc: Input genome file of reference  [required]
  type: File?
  inputBinding:
    prefix: --genome-file
- id: in_output_file
  doc: Path to output file.
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_label_num
  doc: Number of separate label columns.
  type: long?
  inputBinding:
    prefix: --label_num
- id: in_precision
  doc: "Precision of decimals when computing the\nattributes like GC content."
  type: long?
  inputBinding:
    prefix: --precision
- id: in_b_gzip
  doc: Output will be bgzipped.
  type: boolean?
  inputBinding:
    prefix: --bgzip
- id: in_log
  doc: Write logging to this file.
  type: File?
  inputBinding:
    prefix: --log
- id: in_verbose
  doc: Will print verbose messages.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_seed
  doc: Sets the seed for sampling.
  type: long?
  inputBinding:
    prefix: --seed
- id: in_cores
  doc: 'number of used cores default: 1'
  type: long?
  inputBinding:
    prefix: --cores
- id: in_memory
  doc: "amount of memory per core (e.g. 2 cores * 2GB =\n4GB) default: 2GB"
  type: long?
  inputBinding:
    prefix: --memory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Path to output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- negative_training_sampler
