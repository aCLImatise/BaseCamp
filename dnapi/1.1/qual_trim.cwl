class: CommandLineTool
id: ../../../qual_trim.py.cwl
inputs:
- id: asciiencoded_quality_offset
  doc: 'ASCII-encoded quality offset, e.g. 33 or 64 (default: 33)'
  type: string
  inputBinding:
    prefix: -b
- id: error_probability_cutoff
  doc: 'error probability cutoff (default: 0.1)'
  type: string
  inputBinding:
    prefix: -p
- id: quality_score_cutoff
  doc: "quality score cutoff (default: '-p 0.1')"
  type: string
  inputBinding:
    prefix: -q
- id: minimum_read_length
  doc: 'minimum read length in bp (default: 16)'
  type: string
  inputBinding:
    prefix: -l
- id: illumina_five
  doc: Illumina 1.5+ encoding marked with 'B'
  type: boolean
  inputBinding:
    prefix: --illumina5
- id: solexa
  doc: Solexa encoding
  type: boolean
  inputBinding:
    prefix: --solexa
- id: fast_q
  doc: including stdin or compressed file {zip,gz,tar,bz}
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- qual_trim.py
