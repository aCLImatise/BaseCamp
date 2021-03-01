class: CommandLineTool
id: msi.cwl
inputs:
- id: in_toplevel_directory_nanopore
  doc: '- toplevel directory with the nanopore data. fastq files will be searched
    in $tl_dir/*.fastq.gz. It is expected one file per library/barcode.'
  type: File?
  inputBinding:
    prefix: -i
- id: in_minimum_length_reads
  doc: '- minimum length of the reads'
  type: long?
  inputBinding:
    prefix: -m
- id: in_maximum_length_reads
  doc: '- maximum length of the reads'
  type: long?
  inputBinding:
    prefix: -M
- id: in__minimum_quality
  doc: '- minimum quality'
  type: long?
  inputBinding:
    prefix: -q
- id: in__metadata_file
  doc: '- metadata file*'
  type: File?
  inputBinding:
    prefix: -I
- id: in_minimum_number_reads
  doc: '- minimum number of reads that a cluster should have (Default=1)'
  type: long?
  inputBinding:
    prefix: -C
- id: in__output_folder
  doc: '-  output folder'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_path_blast_database
  doc: '- path to the blast database'
  type: File?
  inputBinding:
    prefix: -b
- id: in_value_passed_
  doc: '- value passed to blast (minimum % id - value between 0 and 100)'
  type: long?
  inputBinding:
    prefix: -B
- id: in_value_minimum_evalue
  doc: '- value passed to blast (minimum e-value - value < 1)'
  type: long?
  inputBinding:
    prefix: -E
- id: in_minimum_cluster_identity
  doc: minimum cluster identity (sequences with a value greater or equal are clustered
    together - value between 0 and 1)
  type: long?
  inputBinding:
    prefix: -T
- id: in_maximum_number_threads
  doc: '- maximum number of threads'
  type: long?
  inputBinding:
    prefix: -t
- id: in_file_overrides_passed
  doc: '- file with default parameters values (overrides values passed in the command
    line)'
  type: File?
  inputBinding:
    prefix: -c
- id: in_run_fastqc_generate
  doc: '- run fastqc to generate qc reports for the fastq files'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_stop_execution_running
  doc: '- stop execution before running blast'
  type: boolean?
  inputBinding:
    prefix: -S
- id: in__increase_verbosity
  doc: '- increase verbosity'
  type: boolean?
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_folder
  doc: '-  output folder'
  type: Directory?
  outputBinding:
    glob: $(inputs.in__output_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msi:0.3.5--1
cwlVersion: v1.1
baseCommand:
- msi
