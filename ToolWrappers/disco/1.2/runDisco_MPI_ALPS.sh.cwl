class: CommandLineTool
id: runDisco_MPI_ALPS.sh.cwl
inputs:
- id: in_ins
  doc: single read filenames (comma separated fasta/fastq/fastq.gz files).
  type: boolean?
  inputBinding:
    prefix: -inS
- id: in_in_one
  doc: forward paired read filename (single fasta/fastq/fastq.gz file).
  type: boolean?
  inputBinding:
    prefix: -in1
- id: in_in_two
  doc: reverse paired read filename (single fasta/fastq/fastq.gz file).
  type: boolean?
  inputBinding:
    prefix: -in2
- id: in_inp
  doc: interleaved paired read filenames (comma separated fasta/fastq/fastq.gz files).
  type: boolean?
  inputBinding:
    prefix: -inP
- id: in_output_directory_path
  doc: output directory path.
  type: File?
  inputBinding:
    prefix: -d
- id: in_output_filename_prefix
  doc: output filename prefix.
  type: File?
  inputBinding:
    prefix: -o
- id: in_maximum_memory_used
  doc: 'maximum memory to be used (DEFAULT: 15 GB).'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_np
  doc: 'number of MPI processes (DEFAULT: ).'
  type: boolean?
  inputBinding:
    prefix: -np
- id: in_number_threads_default
  doc: 'number of threads (DEFAULT: ).'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_obg
  doc: 'only build overlap graph (DEFAULT: False).'
  type: boolean?
  inputBinding:
    prefix: -obg
- id: in_osg
  doc: 'only simplify existing overlap graph (DEFAULT: False).'
  type: boolean?
  inputBinding:
    prefix: -osg
- id: in_rma
  doc: 'enable distributed memory with remote memory acess (DEFAULT: False).'
  type: boolean?
  inputBinding:
    prefix: -rma
- id: in_assembly_parameter_file_st
  doc: assembly parameter file for 1st assembly iteration.
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_p_two
  doc: assembly parameter file for 2nd assembly iteration.
  type: boolean?
  inputBinding:
    prefix: -p2
- id: in_p_three
  doc: assembly parameter file for 3rd assembly iteration.
  type: boolean?
  inputBinding:
    prefix: -p3
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_clusters
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_using
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_application
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_level
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_placement
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_scheduler
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_path
  doc: output directory path.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_directory_path)
- id: out_output_filename_prefix
  doc: output filename prefix.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- runDisco-MPI-ALPS.sh
