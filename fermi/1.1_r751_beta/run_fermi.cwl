class: CommandLineTool
id: ../../../run_fermi.pl.cwl
inputs:
- id: input_files_paired
  doc: the input files are paired (ends in separate files)
  type: boolean
  inputBinding:
    prefix: -P
- id: input_collatediniterleaved_fastq
  doc: the input is collated/initerleaved FASTQ (two ends in the same file)
  type: boolean
  inputBinding:
    prefix: -c
- id: halve_number_jobs
  doc: halve the number of jobs for building the split index (effective with -B)
  type: boolean
  inputBinding:
    prefix: -D
- id: use_original_algorithm
  doc: use the original algorithm for constructing FMD-index (default is BCR)
  type: boolean
  inputBinding:
    prefix: -B
- id: skip_error_correction
  doc: skip error correction
  type: boolean
  inputBinding:
    prefix: -C
- id: fermi_executable
  doc: fermi executable [fermi]
  type: File
  inputBinding:
    prefix: -e
- id: number_of_threads
  doc: number of threads [2]
  type: long
  inputBinding:
    prefix: -t
- id: prefix_output_files
  doc: prefix of output files [fmdef]
  type: string
  inputBinding:
    prefix: -p
- id: trim_reads_int
  doc: trim reads to INT bp after error correction [inf]
  type: long
  inputBinding:
    prefix: -l
- id: minimum_overlap
  doc: minimum overlap [50]
  type: long
  inputBinding:
    prefix: -k
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- run-fermi.pl
