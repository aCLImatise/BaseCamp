class: CommandLineTool
id: gfPcr.cwl
inputs:
- id: in_maxsize
  doc: '- Maximum size of PCR product (default 4000)'
  type: long
  inputBinding:
    prefix: -maxSize
- id: in_min_perfect
  doc: "- Minimum size of perfect match at 3' end of primer (default 15)"
  type: long
  inputBinding:
    prefix: -minPerfect
- id: in_min_good
  doc: '- Minimum size where there must be 2 matches for each mismatch (default 18)'
  type: long
  inputBinding:
    prefix: -minGood
- id: in_out
  doc: "- Output format.  Either\nfa - fasta with position, primers in header (default)\n\
    bed - tab delimited format. Fields: chrom/start/end/name/score/strand\npsl - blat\
    \ format."
  type: string
  inputBinding:
    prefix: -out
- id: in_name
  doc: '- Name to use in bed output.'
  type: string
  inputBinding:
    prefix: -name
- id: in_host
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_port
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_seq_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_f_primer
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_r_primer
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gfPcr
