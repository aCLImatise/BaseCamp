class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/htsbox_peovlp.cwl
inputs:
- id: barcode_file_overriding
  doc: barcode file (overriding -B) []
  type: File
  inputBinding:
    prefix: -b
- id: barcode_length
  doc: barcode length [0,0]
  type:
  - long
  inputBinding:
    prefix: -B
- id: number_of_threads
  doc: number of threads [2]
  type: long
  inputBinding:
    prefix: -t
- id: min_readfragment_length
  doc: min read/fragment length to output [0]
  type: long
  inputBinding:
    prefix: -l
- id: min_overlap_length
  doc: min overlap length [15]
  type: long
  inputBinding:
    prefix: -o
- id: output_pe_reads
  doc: output PE reads to STR.R[12].fq.gz (overriding -P) [discard pe]
  type: string
  inputBinding:
    prefix: -p
- id: trim_intbp_end
  doc: trim INT-bp from 5'-end [0]
  type: long
  inputBinding:
    prefix: -T
- id: output_paired_reads
  doc: output paired reads also to stdout [discard pe]
  type: boolean
  inputBinding:
    prefix: -P
- id: tabular_output_debugging
  doc: tabular output for debugging
  type: boolean
  inputBinding:
    prefix: -d
- id: seq_tk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: merge_pe
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: read_one_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: read_two_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- peovlp
