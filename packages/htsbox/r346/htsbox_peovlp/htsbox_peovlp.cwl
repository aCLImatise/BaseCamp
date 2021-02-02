class: CommandLineTool
id: htsbox_peovlp.cwl
inputs:
- id: in_barcode_file_overriding
  doc: barcode file (overriding -B) []
  type: File
  inputBinding:
    prefix: -b
- id: in_barcode_length
  doc: barcode length [0,0]
  type:
  - long
  inputBinding:
    prefix: -B
- id: in_number_of_threads
  doc: number of threads [2]
  type: long
  inputBinding:
    prefix: -t
- id: in_min_readfragment_length
  doc: min read/fragment length to output [0]
  type: long
  inputBinding:
    prefix: -l
- id: in_min_overlap_length
  doc: min overlap length [15]
  type: long
  inputBinding:
    prefix: -o
- id: in_output_pe_reads
  doc: output PE reads to STR.R[12].fq.gz (overriding -P) [discard pe]
  type: string
  inputBinding:
    prefix: -p
- id: in_trim_intbp_end
  doc: trim INT-bp from 5'-end [0]
  type: long
  inputBinding:
    prefix: -T
- id: in_output_paired_reads
  doc: output paired reads also to stdout [discard pe]
  type: boolean
  inputBinding:
    prefix: -P
- id: in_tabular_output_debugging
  doc: tabular output for debugging
  type: boolean
  inputBinding:
    prefix: -d
- id: in_seq_tk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_merge_pe
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_read_one_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_read_two_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- htsbox
- peovlp
