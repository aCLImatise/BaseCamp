class: CommandLineTool
id: bamToBed.cwl
inputs:
- id: in_bed_pe
  doc: "Write BEDPE format.\n- Requires BAM to be grouped or sorted by query."
  type: boolean
  inputBinding:
    prefix: -bedpe
- id: in_mate_one
  doc: "When writing BEDPE (-bedpe) format,\nalways report mate one as the first BEDPE\
    \ \"block\"."
  type: boolean
  inputBinding:
    prefix: -mate1
- id: in_be_done_two
  doc: "Write \"blocked\" BED format (aka \"BED12\"). Forces -split.\nhttp://genome-test.cse.ucsc.edu/FAQ/FAQformat#format1"
  type: boolean
  inputBinding:
    prefix: -bed12
- id: in_split
  doc: "Report \"split\" BAM alignments as separate BED entries.\nSplits only on N\
    \ CIGAR operations."
  type: boolean
  inputBinding:
    prefix: -split
- id: in_split_d
  doc: "alignments based on N and D CIGAR operators.\nForces -split."
  type: string
  inputBinding:
    prefix: -splitD
- id: in_ed
  doc: "Use BAM edit distance (NM tag) for BED score.\n- Default for BED is to use\
    \ mapping quality.\n- Default for BEDPE is to use the minimum of\nthe two mapping\
    \ qualities for the pair.\n- When -ed is used with -bedpe, the total edit\ndistance\
    \ from the two mates is reported."
  type: boolean
  inputBinding:
    prefix: -ed
- id: in_tag
  doc: "Use other NUMERIC BAM alignment tag for BED score.\n- Default for BED is to\
    \ use mapping quality.\nDisallowed with BEDPE output."
  type: boolean
  inputBinding:
    prefix: -tag
- id: in_color
  doc: "An R,G,B string for the color used with BED12 format.\nDefault is (255,0,0)."
  type: boolean
  inputBinding:
    prefix: -color
- id: in_cigar
  doc: Add the CIGAR string to the BED entry as a 7th column.
  type: boolean
  inputBinding:
    prefix: -cigar
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bamToBed
