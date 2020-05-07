class: CommandLineTool
id: platon.cwl
inputs:
- id: db
  doc: database path (default = <platon_path>/db)
  type: string
  inputBinding:
    prefix: --db
- id: threads
  doc: number of threads to use (default = number of available CPUs)
  type: string
  inputBinding:
    prefix: --threads
- id: verbose
  doc: print verbose information
  type: boolean
  inputBinding:
    prefix: --verbose
- id: characterize
  doc: deactivate filters; characterize all contigs
  type: boolean
  inputBinding:
    prefix: --characterize
- id: output
  doc: output directory (default = current working directory)
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- platon
