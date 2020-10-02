class: CommandLineTool
id: qual_trim.py.cwl
inputs:
- id: in_asciiencoded_quality_offset
  doc: 'ASCII-encoded quality offset, e.g. 33 or 64 (default: 33)'
  type: long
  inputBinding:
    prefix: -b
- id: in_error_probability_cutoff
  doc: 'error probability cutoff (default: 0.1)'
  type: double
  inputBinding:
    prefix: -p
- id: in_quality_score_cutoff
  doc: "quality score cutoff (default: '-p 0.1')"
  type: double
  inputBinding:
    prefix: -q
- id: in_minimum_read_length
  doc: 'minimum read length in bp (default: 16)'
  type: long
  inputBinding:
    prefix: -l
- id: in_illumina_five
  doc: Illumina 1.5+ encoding marked with 'B'
  type: boolean
  inputBinding:
    prefix: --illumina5
- id: in_solexa
  doc: Solexa encoding
  type: boolean
  inputBinding:
    prefix: --solexa
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qual_trim.py
