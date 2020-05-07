class: CommandLineTool
id: maf_extract_ranges_indexed.py.cwl
inputs:
- id: min_cols
  doc: Minimum length (columns) required for alignment to be output
  type: long
  inputBinding:
    prefix: --mincols
- id: chop
  doc: Should blocks be chopped to only portion overlapping (no by default)
  type: boolean
  inputBinding:
    prefix: --chop
- id: src
  doc: Use this src for all intervals
  type: string
  inputBinding:
    prefix: --src
- id: prefix
  doc: Prepend this to each src before lookup
  type: string
  inputBinding:
    prefix: --prefix
- id: dir
  doc: Write each interval as a separate file in this directory
  type: string
  inputBinding:
    prefix: --dir
- id: strand
  doc: Strand is included as an additional column, and the blocks are reverse complemented
    (if necessary) so that they are always on that strand w/r/t the src species.
  type: boolean
  inputBinding:
    prefix: --strand
- id: use_cache
  doc: Use a cache that keeps blocks of the MAF files in memory (requires ~20MB per
    MAF)
  type: boolean
  inputBinding:
    prefix: --usecache
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_extract_ranges_indexed.py
