class: CommandLineTool
id: twoBitToFa.cwl
inputs:
- id: in_seq
  doc: Restrict this to just one sequence.
  type: string
  inputBinding:
    prefix: -seq
- id: in_start
  doc: Start at given position in sequence (zero-based).
  type: string
  inputBinding:
    prefix: -start
- id: in_end
  doc: End at given position in sequence (non-inclusive).
  type: string
  inputBinding:
    prefix: -end
- id: in_seq_list
  doc: "File containing list of the desired sequence names\nin the format seqSpec[:start-end],\
    \ e.g. chr1 or chr1:0-189\nwhere coordinates are half-open zero-based, i.e. [start,end)."
  type: File
  inputBinding:
    prefix: -seqList
- id: in_no_mask
  doc: Convert sequence to all upper case.
  type: boolean
  inputBinding:
    prefix: -noMask
- id: in_bpt
  doc: Use bpt index instead of built-in one.
  type: string
  inputBinding:
    prefix: -bpt
- id: in_bed
  doc: Grab sequences specified by input.bed. Will exclude introns.
  type: string
  inputBinding:
    prefix: -bed
- id: in_bed_pos
  doc: With -bed, use chrom:start-end as the fasta ID in output.fa.
  type: boolean
  inputBinding:
    prefix: -bedPos
- id: in_udc_dir
  doc: =/dir/to/cache  Place to put cache for remote bigBed/bigWigs.
  type: boolean
  inputBinding:
    prefix: -udcDir
- id: in_input_dot_two_bit
  doc: ''
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- twoBitToFa
