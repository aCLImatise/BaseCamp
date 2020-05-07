class: CommandLineTool
id: poppunk_references.cwl
inputs:
- id: network
  doc: gpickle file of network (required)
  type: string
  inputBinding:
    prefix: --network
- id: distances
  doc: Prefix of input pickle of pre-calculated distances (required)
  type: string
  inputBinding:
    prefix: --distances
- id: ref_db
  doc: Location of reference db, if resketching
  type: string
  inputBinding:
    prefix: --ref-db
- id: model
  doc: Directory containing model fit. Will be copied to new directory
  type: string
  inputBinding:
    prefix: --model
- id: clusters
  doc: Specify a different clustering (e.g. core/accessory) to copy to new directory
  type: string
  inputBinding:
    prefix: --clusters
- id: output
  doc: Prefix for output files (required)
  type: string
  inputBinding:
    prefix: --output
- id: no_re_sketch
  doc: Do not resketch the references (--use-mash only)[default = False]
  type: boolean
  inputBinding:
    prefix: --no-resketch
- id: use_mash
  doc: Use the old mash sketch backend [default = False]
  type: boolean
  inputBinding:
    prefix: --use-mash
- id: mash
  doc: Location of mash executable
  type: string
  inputBinding:
    prefix: --mash
- id: threads
  doc: Number of threads to use [default = 1]
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- poppunk_references
