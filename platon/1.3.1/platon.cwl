class: CommandLineTool
id: ../../../platon.cwl
inputs:
- id: db
  doc: database path (default = <platon_path>/db)
  type: string
  inputBinding:
    prefix: --db
- id: mode
  doc: 'applied filter mode: sensitivity: RDS only (>= 95% sensitivity); specificity:
    RDS only (>=99.9% specificity); accuracy: RDS & characterization heuristics (highest
    accuracy) (default = accuracy)'
  type: string
  inputBinding:
    prefix: --mode
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
outputs: []
cwlVersion: v1.1
baseCommand:
- platon
