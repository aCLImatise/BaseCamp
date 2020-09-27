class: CommandLineTool
id: taipale2meme.cwl
inputs:
- id: in_postfix
  doc: text to append to motif names.
  type: string
  inputBinding:
    prefix: -postfix
- id: in_strands
  doc: "|2            print '+ -' or '+' on the MEME strand line;\ndefault: 2 (prints\
    \ '+ -')"
  type: long
  inputBinding:
    prefix: -strands
- id: in_bg
  doc: "file with background frequencies of letters;\ndefault: uniform"
  type: File
  inputBinding:
    prefix: -bg
- id: in_pseudo
  doc: "add <A> times background frequency to\neach count when computing letter frequencies\n\
    default: 0"
  type: long
  inputBinding:
    prefix: -pseudo
- id: in_log_odds
  doc: "print log-odds matrix as well as frequency matrix;\ndefault: frequency matrix\
    \ only"
  type: boolean
  inputBinding:
    prefix: -logodds
- id: in_url
  doc: "website for the motif if it doesn't have one\nalready; The motif name is substituted\
    \ for\nMOTIF_NAME; default: use existing url"
  type: string
  inputBinding:
    prefix: -url
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- taipale2meme
