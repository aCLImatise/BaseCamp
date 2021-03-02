class: CommandLineTool
id: atlas_init.cwl
inputs:
- id: in_db_dir
  doc: "location to store databases (need ~50GB)\n[default: /databases]"
  type: File?
  inputBinding:
    prefix: --db-dir
- id: in_working_dir
  doc: location to run atlas
  type: File?
  inputBinding:
    prefix: --working-dir
- id: in_assembler
  doc: '[megahit|spades]    assembler  [default: spades]'
  type: boolean?
  inputBinding:
    prefix: --assembler
- id: in_data_type
  doc: "[metagenome|metatranscriptome]\nsample data type  [default: metagenome]"
  type: boolean?
  inputBinding:
    prefix: --data-type
- id: in_interleaved_fast_q
  doc: "fastq files are paired-end in one files\n(interleaved)"
  type: boolean?
  inputBinding:
    prefix: --interleaved-fastq
- id: in_threads
  doc: number of threads to use per multi-threaded
  type: long?
  inputBinding:
    prefix: --threads
- id: in_job
  doc: --skip-qc                       Skip QC, if reads are already pre-processed
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metagenome-atlas:2.4.5--py_0
cwlVersion: v1.1
baseCommand:
- atlas
- init
