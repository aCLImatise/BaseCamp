class: CommandLineTool
id: mira.cwl
inputs:
- id: in_cwd
  doc: =           directory       Change working directory
  type: boolean?
  inputBinding:
    prefix: --cwd
- id: in_m_check
  doc: Only check the manifest file, then exit.
  type: boolean?
  inputBinding:
    prefix: --mcheck
- id: in_md_check
  doc: "Like -m, but also check existence of\ndata files."
  type: boolean?
  inputBinding:
    prefix: --mdcheck
- id: in_resume
  doc: Resume an interrupted assembly
  type: boolean?
  inputBinding:
    prefix: --resume
- id: in_threads
  doc: "=       integer         Force number of threads (overrides\nequivalent -GE:not\
    \ manifest entry)"
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_mira_talk_at_freelists_dot_org
  doc: To report bugs or ask for features, please use the SourceForge ticketing
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
- mira
