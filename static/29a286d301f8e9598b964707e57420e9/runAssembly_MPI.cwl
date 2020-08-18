class: CommandLineTool
id: ../../../runAssembly_MPI.sh.cwl
inputs:
- id: ins
  doc: single read filenames (comma separated fasta/fastq/fastq.gz files).
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
  doc: interleaved paired read filenames (comma separated fasta/fastq/fastq.gz files).
  type: boolean
  inputBinding:
    prefix: -inP
- id: output_directory_path
  doc: output directory path.
  type: boolean
  inputBinding:
    prefix: -d
- id: output_filename_prefix
  doc: output filename prefix.
  type: boolean
  inputBinding:
    prefix: -o
- id: maximum_memory_used
  doc: 'maximum memory to be used (DEFAULT: 15 GB).'
  type: boolean
  inputBinding:
    prefix: -m
- id: np
  doc: 'number of MPI processes (DEFAULT: ).'
  type: boolean
  inputBinding:
    prefix: -np
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
- id: rma
  doc: 'enable distributed memory with remote memory acess (DEFAULT: False).'
  type: boolean
  inputBinding:
    prefix: -rma
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
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: clusters
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: using
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: pbs
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: with
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: open_mpi
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- runAssembly-MPI.sh
