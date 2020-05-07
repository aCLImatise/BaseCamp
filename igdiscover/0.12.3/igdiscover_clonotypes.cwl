class: CommandLineTool
id: igdiscover_clonotypes.cwl
inputs:
- id: sort
  doc: 'Sort by group size (largest first). Default: Sort by V/D/J gene names'
  type: boolean
  inputBinding:
    prefix: --sort
- id: limit
  doc: Print out only the first N groups
  type: string
  inputBinding:
    prefix: --limit
- id: v_shm_threshold
  doc: V SHM threshold for _mindiffrate computations
  type: string
  inputBinding:
    prefix: --v-shm-threshold
- id: cdr3_core
  doc: ':END START:END defines the non-junction region of CDR3 sequences. Use negative
    numbers for END to count from the end. Regions before and after are considered
    to be junction sequence, and for two CDR3s to be considered similar, at least
    one of the junctions must be identical. Default: no junction region.'
  type: string
  inputBinding:
    prefix: --cdr3-core
- id: mismatches
  doc: 'No. of allowed mismatches between CDR3 sequences. Can also be a fraction between
    0 and 1 (such as 0.15), interpreted relative to the length of the CDR3 (minus
    the front non-core). Default: 1'
  type: string
  inputBinding:
    prefix: --mismatches
- id: aa
  doc: 'Count CDR3 mismatches on amino-acid level. Default: Compare nucleotides.'
  type: boolean
  inputBinding:
    prefix: --aa
- id: members
  doc: Write member table to FILE
  type: File
  inputBinding:
    prefix: --members
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- clonotypes
