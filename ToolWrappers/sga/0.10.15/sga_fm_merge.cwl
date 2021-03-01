class: CommandLineTool
id: sga_fm_merge.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_prefix
  doc: 'use PREFIX for the names of the index files (default: prefix of the input
    file)'
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_threads
  doc: 'use NUM worker threads (default: no threading)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_min_overlap
  doc: 'minimum overlap required between two reads to merge (default: 45)'
  type: long?
  inputBinding:
    prefix: --min-overlap
- id: in_outfile
  doc: 'write the merged sequences to FILE (default: basename.merged.fa)'
  type: File?
  inputBinding:
    prefix: --outfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sga
- fm-merge
