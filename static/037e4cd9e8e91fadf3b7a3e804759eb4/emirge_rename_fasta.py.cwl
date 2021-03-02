class: CommandLineTool
id: emirge_rename_fasta.py.cwl
inputs:
- id: in_prob_min
  doc: "Only include sequences in output with prior\nprobability above PROB_MIN (Default:\
    \ include all\nsequences)"
  type: long?
  inputBinding:
    prefix: --prob_min
- id: in_record_prefix
  doc: Add the specified prefix to each fasta record title
  type: string?
  inputBinding:
    prefix: --record_prefix
- id: in_no_n
  doc: "Don't change bases with no read support to N.\nCaution: these bases are not\
    \ supported by reads in the\ninput data, but will usually be from a closely related\n\
    sequence."
  type: boolean?
  inputBinding:
    prefix: --no_N
- id: in_no_trim_n
  doc: "Don't trim off N bases with no read support from ends\nof sequences.  Ignored\
    \ if --no_N is also passed\n"
  type: boolean?
  inputBinding:
    prefix: --no_trim_N
- id: in_iter_dot_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- emirge_rename_fasta.py
