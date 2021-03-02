class: CommandLineTool
id: overlapPair.cwl
inputs:
- id: in_mandatory_path_seqstore
  doc: Mandatory, path to seqStore
  type: File?
  inputBinding:
    prefix: -S
- id: in_erate
  doc: Overlaps are computed at 'e' fraction error; must be larger than the original
    erate
  type: string?
  inputBinding:
    prefix: -erate
- id: in_partial
  doc: Overlaps are 'overlapInCore -S' partial overlaps
  type: boolean?
  inputBinding:
    prefix: -partial
- id: in_memory
  doc: Use up to 'm' GB of memory
  type: string?
  inputBinding:
    prefix: -memory
- id: in_use_up_cores
  doc: Use up to 'n' cores
  type: string?
  inputBinding:
    prefix: -t
- id: in_invert
  doc: Invert the overlap A <-> B before aligning (they are not re-inverted before
    output)
  type: boolean?
  inputBinding:
    prefix: -invert
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/canu:2.1.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- overlapPair
