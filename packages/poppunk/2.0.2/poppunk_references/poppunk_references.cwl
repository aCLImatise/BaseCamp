class: CommandLineTool
id: poppunk_references.cwl
inputs:
- id: in_network
  doc: gpickle file of network (required)
  type: File
  inputBinding:
    prefix: --network
- id: in_distances
  doc: "Prefix of input pickle of pre-calculated distances\n(required)"
  type: string
  inputBinding:
    prefix: --distances
- id: in_ref_db
  doc: Location of reference db, if resketching
  type: string
  inputBinding:
    prefix: --ref-db
- id: in_model
  doc: Directory containing model fit. Will be copied to new
  type: Directory
  inputBinding:
    prefix: --model
- id: in_output
  doc: Prefix for output files (required)
  type: string
  inputBinding:
    prefix: --output
- id: in_no_re_sketch
  doc: "Do not resketch the references (--use-mash\nonly)[default = False]"
  type: boolean
  inputBinding:
    prefix: --no-resketch
- id: in_use_mash
  doc: Use the old mash sketch backend [default = False]
  type: boolean
  inputBinding:
    prefix: --use-mash
- id: in_mash
  doc: Location of mash executable
  type: string
  inputBinding:
    prefix: --mash
- id: in_threads
  doc: Number of threads to use [default = 1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_directory
  doc: --clusters CLUSTERS   Specify a different clustering (e.g. core/accessory)
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- poppunk_references
