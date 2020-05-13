class: CommandLineTool
id: sga_fm_merge.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: prefix
  doc: 'use PREFIX for the names of the index files (default: prefix of the input
    file)'
  type: string
  inputBinding:
    prefix: --prefix
- id: threads
  doc: 'use NUM worker threads (default: no threading)'
  type: string
  inputBinding:
    prefix: --threads
- id: min_overlap
  doc: 'minimum overlap required between two reads to merge (default: 45)'
  type: string
  inputBinding:
    prefix: --min-overlap
- id: outfile
  doc: 'write the merged sequences to FILE (default: basename.merged.fa)'
  type: File
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- fm-merge
