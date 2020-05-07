class: CommandLineTool
id: metagenomics.cwl
inputs:
- id: threads
  doc: 'Launch NTHREADS parallel search threads - default: 1 (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: format
  doc: 'Choose format (default: fastq)'
  type: string
  inputBinding:
    prefix: --format
- id: num_primary_assign
  doc: 'It searches for at most <int> distinct, primary assignments for each read
    or pair.Default=5 (default: 1)'
  type: string
  inputBinding:
    prefix: --num_primary_assign
- id: index
  doc: 'The basename of the index for the reference genomes (default: None)'
  type: string
  inputBinding:
    prefix: --index
- id: read_type
  doc: 'Choose read type, skip if using Trinity assembles reads (default: paired)'
  type: string
  inputBinding:
    prefix: --read_type
- id: right_fq
  doc: 'Right_fq (only when fastq format is used for read_type paired) (default: None)'
  type: string
  inputBinding:
    prefix: --right_fq
- id: left_fq
  doc: 'Left_fq (only when fastq format is used for read_type paired) (default: None)'
  type: string
  inputBinding:
    prefix: --left_fq
- id: unpaired_reads
  doc: 'Comma-separated list of files containing unpaired reads to be aligned (for
    Trinity runs and single end reads) (default: None)'
  type: string
  inputBinding:
    prefix: --unpaired_reads
outputs: []
cwlVersion: v1.1
baseCommand:
- metagenomics
