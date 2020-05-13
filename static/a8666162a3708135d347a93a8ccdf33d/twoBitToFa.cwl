class: CommandLineTool
id: twoBitToFa.cwl
inputs:
- id: or
  doc: /path/input.2bit:name
  type: string
  inputBinding:
    position: 0
- id: or
  doc: /path/input.2bit:name:start-end
  type: string
  inputBinding:
    position: 1
- id: seq
  doc: Restrict this to just one sequence.
  type: string
  inputBinding:
    prefix: -seq
- id: start
  doc: Start at given position in sequence (zero-based).
  type: string
  inputBinding:
    prefix: -start
- id: end
  doc: End at given position in sequence (non-inclusive).
  type: string
  inputBinding:
    prefix: -end
- id: seq_list
  doc: File containing list of the desired sequence names  in the format seqSpec[:start-end],
    e.g. chr1 or chr1:0-189 where coordinates are half-open zero-based, i.e. [start,end).
  type: File
  inputBinding:
    prefix: -seqList
- id: no_mask
  doc: Convert sequence to all upper case.
  type: boolean
  inputBinding:
    prefix: -noMask
- id: bpt
  doc: Use bpt index instead of built-in one.
  type: string
  inputBinding:
    prefix: -bpt
- id: bed
  doc: Grab sequences specified by input.bed. Will exclude introns.
  type: string
  inputBinding:
    prefix: -bed
- id: bed_pos
  doc: With -bed, use chrom:start-end as the fasta ID in output.fa.
  type: boolean
  inputBinding:
    prefix: -bedPos
- id: udc_dir
  doc: =/dir/to/cache  Place to put cache for remote bigBed/bigWigs.
  type: boolean
  inputBinding:
    prefix: -udcDir
outputs: []
cwlVersion: v1.1
baseCommand:
- twoBitToFa
