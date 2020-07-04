class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/negative_training_sampler.cwl
inputs:
- id: label_file
  doc: Input bed file with labeled regions  [required]
  type: File
  inputBinding:
    prefix: --label-file
- id: reference_file
  doc: Input genome reference in fasta format [required]
  type: File
  inputBinding:
    prefix: --reference-file
- id: genome_file
  doc: Input genome file of reference  [required]
  type: File
  inputBinding:
    prefix: --genome-file
- id: output_file
  doc: Path to output file.
  type: File
  inputBinding:
    prefix: --output_file
- id: label_num
  doc: Number of separate label columns.
  type: long
  inputBinding:
    prefix: --label_num
- id: precision
  doc: Precision of decimals when computing the attributes like GC content.
  type: long
  inputBinding:
    prefix: --precision
- id: b_gzip
  doc: Output will be bgzipped.
  type: boolean
  inputBinding:
    prefix: --bgzip
- id: log
  doc: Write logging to this file.
  type: File
  inputBinding:
    prefix: --log
- id: verbose
  doc: Will print verbose messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: seed
  doc: Sets the seed for sampling.
  type: long
  inputBinding:
    prefix: --seed
- id: cores
  doc: 'number of used cores default: 1'
  type: long
  inputBinding:
    prefix: --cores
- id: memory
  doc: 'amount of memory per core (e.g. 2 cores * 2GB = 4GB) default: 2GB'
  type: string
  inputBinding:
    prefix: --memory
outputs: []
cwlVersion: v1.1
baseCommand:
- negative_training_sampler
