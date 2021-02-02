class: CommandLineTool
id: sga_overlap.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: 'use NUM worker threads to compute the overlaps (default: no threading)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_error_rate
  doc: 'the maximum error rate allowed to consider two sequences aligned (default:
    exact matches only)'
  type: boolean
  inputBinding:
    prefix: --error-rate
- id: in_min_overlap
  doc: 'minimum overlap required between two reads (default: 45)'
  type: long
  inputBinding:
    prefix: --min-overlap
- id: in_prefix
  doc: 'use PREFIX for the names of the index files (default: prefix of the input
    file)'
  type: File
  inputBinding:
    prefix: --prefix
- id: in_target_file
  doc: perform the overlap queries against the reads in FILE
  type: File
  inputBinding:
    prefix: --target-file
- id: in_exhaustive
  doc: output all overlaps, including transitive edges
  type: boolean
  inputBinding:
    prefix: --exhaustive
- id: in_exact
  doc: "force the use of the exact-mode irreducible block algorithm. This is faster\n\
    but requires that no substrings are present in the input set."
  type: boolean
  inputBinding:
    prefix: --exact
- id: in_seed_length
  doc: "force the seed length to be LEN. By default, the seed length in the overlap\
    \ step\nis calculated to guarantee all overlaps with --error-rate differences\
    \ are found.\nThis option removes the guarantee but will be (much) faster. As\
    \ SGA can tolerate some\nmissing edges, this option may be preferable for some\
    \ data sets."
  type: long
  inputBinding:
    prefix: --seed-length
- id: in_seed_stride
  doc: "force the seed stride to be LEN. This parameter will be ignored unless --seed-length\n\
    is specified (see above). This parameter defaults to the same value as --seed-length"
  type: long
  inputBinding:
    prefix: --seed-stride
- id: in_sample_rate
  doc: "sample the symbol counts every N symbols in the FM-index. Higher values use\
    \ significantly\nless memory at the cost of higher runtime. This value must be\
    \ a power of 2 (default: 128)"
  type: long
  inputBinding:
    prefix: --sample-rate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sga
- overlap
