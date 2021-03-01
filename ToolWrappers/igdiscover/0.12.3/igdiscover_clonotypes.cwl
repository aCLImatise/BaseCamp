class: CommandLineTool
id: igdiscover_clonotypes.cwl
inputs:
- id: in_sort
  doc: "Sort by group size (largest first). Default: Sort by\nV/D/J gene names"
  type: boolean?
  inputBinding:
    prefix: --sort
- id: in_limit
  doc: Print out only the first N groups
  type: string?
  inputBinding:
    prefix: --limit
- id: in_v_shm_threshold
  doc: V SHM threshold for _mindiffrate computations
  type: string?
  inputBinding:
    prefix: --v-shm-threshold
- id: in_cdr_three_core
  doc: ":END\nSTART:END defines the non-junction region of CDR3\nsequences. Use negative\
    \ numbers for END to count from\nthe end. Regions before and after are considered\
    \ to be\njunction sequence, and for two CDR3s to be considered\nsimilar, at least\
    \ one of the junctions must be\nidentical. Default: no junction region."
  type: long?
  inputBinding:
    prefix: --cdr3-core
- id: in_mismatches
  doc: "No. of allowed mismatches between CDR3 sequences. Can\nalso be a fraction\
    \ between 0 and 1 (such as 0.15),\ninterpreted relative to the length of the CDR3\
    \ (minus\nthe front non-core). Default: 1"
  type: long?
  inputBinding:
    prefix: --mismatches
- id: in_aa
  doc: "Count CDR3 mismatches on amino-acid level. Default:\nCompare nucleotides."
  type: boolean?
  inputBinding:
    prefix: --aa
- id: in_members
  doc: Write member table to FILE
  type: File?
  inputBinding:
    prefix: --members
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- clonotypes
