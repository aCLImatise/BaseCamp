class: CommandLineTool
id: run_fermi.pl.cwl
inputs:
- id: in_input_files_paired
  doc: the input files are paired (ends in separate files)
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_input_collatediniterleaved_fastq
  doc: the input is collated/initerleaved FASTQ (two ends in the same file)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_halve_number_effective
  doc: halve the number of jobs for building the split index (effective with -B)
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_use_original_algorithm
  doc: use the original algorithm for constructing FMD-index (default is BCR)
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_skip_error_correction
  doc: skip error correction
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_fermi_executable
  doc: fermi executable [fermi]
  type: File?
  inputBinding:
    prefix: -e
- id: in_number_of_threads
  doc: number of threads [2]
  type: long?
  inputBinding:
    prefix: -t
- id: in_prefix_output_files
  doc: prefix of output files [fmdef]
  type: string?
  inputBinding:
    prefix: -p
- id: in_trim_reads_int
  doc: trim reads to INT bp after error correction [inf]
  type: long?
  inputBinding:
    prefix: -l
- id: in_minimum_overlap
  doc: minimum overlap [50]
  type: long?
  inputBinding:
    prefix: -k
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
- id: in_in_one_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run-fermi.pl
