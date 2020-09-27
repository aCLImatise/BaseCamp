class: CommandLineTool
id: mira.cwl
inputs:
- id: in__cwd_directory
  doc: / --cwd=           directory       Change working directory
  type: boolean
  inputBinding:
    prefix: -c
- id: in__mcheck_only
  doc: / --mcheck                         Only check the manifest file, then exit.
  type: boolean
  inputBinding:
    prefix: -m
- id: in__mdcheck_m
  doc: "/ --mdcheck                        Like -m, but also check existence of\n\
    data files."
  type: boolean
  inputBinding:
    prefix: -M
- id: in__resume_resume
  doc: / --resume                         Resume an interrupted assembly
  type: boolean
  inputBinding:
    prefix: -r
- id: in__threads_integer
  doc: "/ --threads=       integer         Force number of threads (overrides\nequivalent\
    \ -GE:not manifest entry)"
  type: boolean
  inputBinding:
    prefix: -t
- id: in__version_print
  doc: / --version                        Print version and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: in_mira_talk_at_freelists_dot_org
  doc: To report bugs or ask for features, please use the SourceForge ticketing
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mira
