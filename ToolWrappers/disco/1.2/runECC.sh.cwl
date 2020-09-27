class: CommandLineTool
id: runECC.sh.cwl
inputs:
- id: in_ins
  doc: single read filenames (comma separated fasta/fastq/fastq.gz files).
  type: boolean
  inputBinding:
    prefix: -inS
- id: in_in_one
  doc: forward paired read filename (single fasta/fastq/fastq.gz file).
  type: boolean
  inputBinding:
    prefix: -in1
- id: in_in_two
  doc: reverse paired read filename (single fasta/fastq/fastq.gz file).
  type: boolean
  inputBinding:
    prefix: -in2
- id: in_inp
  doc: interleaved paired read filenames (comma separated fasta/fastq/fastq.gz files).
  type: boolean
  inputBinding:
    prefix: -inP
- id: in_output_directory_directory
  doc: 'output directory path.(DEFAULT: current directory)'
  type: File
  inputBinding:
    prefix: -d
- id: in_output_filename_prefixdefault
  doc: 'output filename prefix.(DEFAULT: disco)'
  type: File
  inputBinding:
    prefix: -o
- id: in_maximum_memory_used
  doc: 'maximum memory to be used (DEFAULT: 15 GB).'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_number_threads_default
  doc: 'number of threads (DEFAULT: ).'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_run_disco_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_directory
  doc: 'output directory path.(DEFAULT: current directory)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_directory_directory)
- id: out_output_filename_prefixdefault
  doc: 'output filename prefix.(DEFAULT: disco)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_filename_prefixdefault)
cwlVersion: v1.1
baseCommand:
- runECC.sh
