class: CommandLineTool
id: poppunk_prune.cwl
inputs:
- id: in_remove
  doc: File listing sequences to remove (required)
  type: File?
  inputBinding:
    prefix: --remove
- id: in_distances
  doc: "Prefix of input pickle of pre-calculated distances\n(required)"
  type: string?
  inputBinding:
    prefix: --distances
- id: in_ref_db
  doc: Location of reference db, if resketching
  type: string?
  inputBinding:
    prefix: --ref-db
- id: in_output
  doc: Prefix for output files (required)
  type: string?
  inputBinding:
    prefix: --output
- id: in_re_sketch
  doc: "Resketch the non-excluded sequences (mash-only)\n[default = False]"
  type: boolean?
  inputBinding:
    prefix: --resketch
- id: in_use_mash
  doc: Use the old mash sketch backend [default = False]
  type: boolean?
  inputBinding:
    prefix: --use-mash
- id: in_mash
  doc: Location of mash executable
  type: string?
  inputBinding:
    prefix: --mash
- id: in_threads
  doc: Number of threads to use [default = 1]
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- poppunk_prune
