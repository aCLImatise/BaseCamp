class: CommandLineTool
id: sga_overlap.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: threads
  doc: 'use NUM worker threads to compute the overlaps (default: no threading)'
  type: string
  inputBinding:
    prefix: --threads
- id: error_rate
  doc: 'the maximum error rate allowed to consider two sequences aligned (default:
    exact matches only)'
  type: boolean
  inputBinding:
    prefix: --error-rate
- id: min_overlap
  doc: 'minimum overlap required between two reads (default: 45)'
  type: string
  inputBinding:
    prefix: --min-overlap
- id: prefix
  doc: 'use PREFIX for the names of the index files (default: prefix of the input
    file)'
  type: string
  inputBinding:
    prefix: --prefix
- id: target_file
  doc: perform the overlap queries against the reads in FILE
  type: File
  inputBinding:
    prefix: --target-file
- id: exhaustive
  doc: output all overlaps, including transitive edges
  type: boolean
  inputBinding:
    prefix: --exhaustive
- id: exact
  doc: force the use of the exact-mode irreducible block algorithm. This is faster
    but requires that no substrings are present in the input set.
  type: boolean
  inputBinding:
    prefix: --exact
- id: seed_length
  doc: force the seed length to be LEN. By default, the seed length in the overlap
    step is calculated to guarantee all overlaps with --error-rate differences are
    found. This option removes the guarantee but will be (much) faster. As SGA can
    tolerate some missing edges, this option may be preferable for some data sets.
  type: string
  inputBinding:
    prefix: --seed-length
- id: seed_stride
  doc: force the seed stride to be LEN. This parameter will be ignored unless --seed-length
    is specified (see above). This parameter defaults to the same value as --seed-length
  type: string
  inputBinding:
    prefix: --seed-stride
- id: sample_rate
  doc: 'sample the symbol counts every N symbols in the FM-index. Higher values use
    significantly less memory at the cost of higher runtime. This value must be a
    power of 2 (default: 128)'
  type: string
  inputBinding:
    prefix: --sample-rate
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- overlap
