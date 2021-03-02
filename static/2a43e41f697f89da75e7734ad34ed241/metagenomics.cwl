class: CommandLineTool
id: metagenomics.cwl
inputs:
- id: in_threads
  doc: "Launch NTHREADS parallel search threads - default: 1\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_format
  doc: 'Choose format (default: fastq)'
  type: string?
  inputBinding:
    prefix: --format
- id: in_num_primary_assign
  doc: "It searches for at most <int> distinct, primary\nassignments for each read\
    \ or pair.Default=5 (default:\n1)"
  type: long?
  inputBinding:
    prefix: --num_primary_assign
- id: in_index
  doc: "The basename of the index for the reference genomes\n(default: None)"
  type: string?
  inputBinding:
    prefix: --index
- id: in_read_type
  doc: "Choose read type, skip if using Trinity assembles\nreads (default: paired)"
  type: string?
  inputBinding:
    prefix: --read_type
- id: in_right_fq
  doc: "Right_fq (only when fastq format is used for read_type\npaired) (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --right_fq
- id: in_left_fq
  doc: "Left_fq (only when fastq format is used for read_type\npaired) (default: None)"
  type: string?
  inputBinding:
    prefix: --left_fq
- id: in_unpaired_reads
  doc: "Comma-separated list of files containing unpaired\nreads to be aligned (for\
    \ Trinity runs and single end\nreads) (default: None)\n"
  type: string?
  inputBinding:
    prefix: --unpaired_reads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- metagenomics
