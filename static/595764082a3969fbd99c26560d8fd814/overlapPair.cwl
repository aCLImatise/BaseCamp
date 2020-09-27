class: CommandLineTool
id: overlapPair.cwl
inputs:
- id: in_mandatory_path_to
  doc: Mandatory, path to seqStore
  type: File
  inputBinding:
    prefix: -S
- id: in_o_ovlfile
  doc: -O ovlFile
  type: string
  inputBinding:
    prefix: -O
- id: in_ovlfileerate_e_overlaps
  doc: "-o ovlFile\n-erate e        Overlaps are computed at 'e' fraction error; must\
    \ be larger than the original erate\n-partial        Overlaps are 'overlapInCore\
    \ -S' partial overlaps\n-memory m       Use up to 'm' GB of memory\n-t n     \
    \       Use up to 'n' cores"
  type: string
  inputBinding:
    prefix: -o
- id: in_invert
  doc: Invert the overlap A <-> B before aligning (they are not re-inverted before
    output)
  type: boolean
  inputBinding:
    prefix: -invert
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- overlapPair
