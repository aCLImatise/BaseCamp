class: CommandLineTool
id: relocaTE_absenceFinder.py_usr_target_genome_path.cwl
inputs:
- id: in_te
  doc: '= sys.argv[4] ## repeat to analyze: ALL or mPing/other te name '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- relocaTE_absenceFinder.py
- usr_target
- genome_path
