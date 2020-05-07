class: CommandLineTool
id: poppunk_prune.cwl
inputs:
- id: remove
  doc: File listing sequences to remove (required)
  type: string
  inputBinding:
    prefix: --remove
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
- id: output
  doc: Prefix for output files (required)
  type: string
  inputBinding:
    prefix: --output
- id: re_sketch
  doc: Resketch the non-excluded sequences (mash-only) [default = False]
  type: boolean
  inputBinding:
    prefix: --resketch
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
- poppunk_prune
