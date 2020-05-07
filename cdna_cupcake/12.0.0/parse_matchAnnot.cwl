class: CommandLineTool
id: parse_matchAnnot.py.cwl
inputs:
- id: fa_or_fq
  doc: Fasta/Fastq filename used to create the SAM file for matchAnnot
  type: string
  inputBinding:
    position: 0
- id: match_filename
  doc: MatchAnnot filename
  type: string
  inputBinding:
    position: 1
- id: not_p_bid
  doc: 'Turn this on if not sequence ID is not PB.X.Y (default: off)'
  type: boolean
  inputBinding:
    prefix: --not_pbid
- id: parse_fl_coverage
  doc: Parse `full_length_coverage=` from sequence ID.
  type: boolean
  inputBinding:
    prefix: --parse_FL_coverage
outputs: []
cwlVersion: v1.1
baseCommand:
- parse_matchAnnot.py
