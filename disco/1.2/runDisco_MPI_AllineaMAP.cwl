class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/runDisco_MPI_AllineaMAP.sh.cwl
inputs:
- id: ins
  doc: single read filenames (comma separated fasta/fastq/fastq.gz file).
  type: boolean
  inputBinding:
    prefix: -inS
- id: in_one
  doc: forward paired read filename (single fasta/fastq/fastq.gz file).
  type: boolean
  inputBinding:
    prefix: -in1
- id: in_two
  doc: reverse paired read filename (single fasta/fastq/fastq.gz file).
  type: boolean
  inputBinding:
    prefix: -in2
- id: inp
  doc: interleaved paired read filenames (comma separated fasta/fastq/fastq.gz file).
  type: boolean
  inputBinding:
    prefix: -inP
- id: output_directory_pathdefault
  doc: 'output directory path.(DEFAULT: current directory)'
  type: boolean
  inputBinding:
    prefix: -d
- id: output_filename_prefixdefault
  doc: 'output filename prefix.(DEFAULT: disco)'
  type: boolean
  inputBinding:
    prefix: -o
- id: maximum_memory_used
  doc: 'maximum memory to be used (DEFAULT: 15 GB).'
  type: boolean
  inputBinding:
    prefix: -m
- id: number_threads_default
  doc: 'number of threads (DEFAULT: 8).'
  type: boolean
  inputBinding:
    prefix: -n
- id: obg
  doc: 'only build overlap graph (DEFAULT: False).'
  type: boolean
  inputBinding:
    prefix: -obg
- id: osg
  doc: 'only simplify existing overlap graph (DEFAULT: False).'
  type: boolean
  inputBinding:
    prefix: -osg
- id: assembly_parameter_file_st
  doc: assembly parameter file for 1st assembly iteration.
  type: boolean
  inputBinding:
    prefix: -p
- id: p_two
  doc: assembly parameter file for 2nd assembly iteration.
  type: boolean
  inputBinding:
    prefix: -p2
- id: p_three
  doc: assembly parameter file for 3rd assembly iteration.
  type: boolean
  inputBinding:
    prefix: -p3
- id: run_disco_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- runDisco-MPI-AllineaMAP.sh
