class: CommandLineTool
id: mapping.cwl
inputs:
- id: in_number_take_default
  doc: number of bases to take an alignment (default 20)
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
- id: in_list_two_exclude
  doc: with sequeces to exclude of the Aligment
  type: File?
  inputBinding:
    prefix: -list2Exclude
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
- id: in_offset_fm_nine
  doc: use several FM9 indexes (default 0)
  type: long?
  inputBinding:
    prefix: -offsetFM9
- id: in_output
  doc: for the output-file  if print option was selected (default output)
  type: File?
  inputBinding:
    prefix: -output
- id: in_print
  doc: the result file (default false)
  type: File?
  inputBinding:
    prefix: -print
- id: in_size
  doc: for the block aligment (default all dataset)
  type: long?
  inputBinding:
    prefix: -size
- id: in_total_reads
  doc: of reads to exclude from list2Exclude
  type: long?
  inputBinding:
    prefix: -totalReads
- id: in_offset_start_alignemnt
  doc: offset to start the alignemnt (default 0)
  type: long?
  inputBinding:
    prefix: -w
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: for the output-file  if print option was selected (default output)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- mapping
