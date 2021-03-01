class: CommandLineTool
id: clame.cwl
inputs:
- id: in_number_take_default
  doc: number of bases to take an alignment (default 70)
  type: long?
  inputBinding:
    prefix: -b
- id: in_fm_nine
  doc: fm9 file
  type: long?
  inputBinding:
    prefix: -fm9
- id: in_fast_q
  doc: file is in a fastq format
  type: File?
  inputBinding:
    prefix: -fastq
- id: in_cut_points_comma
  doc: of cut points (comma separator) for edges constrains (default 0,10000)
  type: long?
  inputBinding:
    prefix: -e
- id: in_multi_fast_a
  doc: FILE  with all the reads
  type: boolean?
  inputBinding:
    prefix: -multiFasta
- id: in_nt
  doc: of threads to use (default 1)
  type: long?
  inputBinding:
    prefix: -nt
- id: in_output
  doc: for the output-file  if print option was selected (default output)
  type: File?
  inputBinding:
    prefix: -output
- id: in_print
  doc: print output to file (default false)
  type: File?
  inputBinding:
    prefix: -print
- id: in_size_bin
  doc: number of reads to report a bin (default 1000)
  type: long?
  inputBinding:
    prefix: -sizeBin
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: for the output-file  if print option was selected (default output)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_print
  doc: print output to file (default false)
  type: File?
  outputBinding:
    glob: $(inputs.in_print)
hints: []
cwlVersion: v1.1
baseCommand:
- clame
