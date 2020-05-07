class: CommandLineTool
id: arb_clean.cwl
inputs:
- id: session
  doc: kill all processes running with current ARB_PID
  type: string
  inputBinding:
    position: 0
- id: old
  doc: delete old pid-files from /tmp (dont do this while arb is running)
  type: string
  inputBinding:
    position: 1
- id: targets
  doc: show process ids of processes, that will be killed by action 'killall'
  type: string
  inputBinding:
    position: 2
- id: kill_all
  doc: 'kill all (current or former) arb processes CAUTION: may act completely wrong
    and kill various running non-ARB-processes!'
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_clean
