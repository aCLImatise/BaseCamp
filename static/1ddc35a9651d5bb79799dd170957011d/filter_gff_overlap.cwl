class: CommandLineTool
id: filter_gff_overlap.cwl
inputs:
- id: in_verbose
  doc: "Size of the overlap that triggers the filter\n[default: 100]"
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_sorted
  doc: "If the GFF file is sorted (all of a sequence\nannotations are contiguos and\
    \ sorted by\nstrand) can use less memory, `sort -s -k 1,1\n-k 7,7` can be used"
  type: boolean?
  inputBinding:
    prefix: --sorted
- id: in_choose_func
  doc: Function to choose between two overlapping
  type: string?
  inputBinding:
    prefix: --choose-func
- id: in_no_strand
  doc: "Strand information is not used, if '-t' is\nused, sort GFF file with `sort\
    \ -s -k 1,1`"
  type: boolean?
  inputBinding:
    prefix: --no-strand
- id: in_iterations
  doc: "RANGE  Max number of iteration over which filter\nthe overlaps"
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_annotations
  doc: -a, --sort-attr [bitscore|identity|length]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- filter-gff
- overlap
