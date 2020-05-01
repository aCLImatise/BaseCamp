#!/usr/bin/env cwl-runner

baseCommand:
- maf_extract_ranges_indexed.py
class: CommandLineTool
cwlVersion: v1.0
id: maf_extract_ranges_indexed.py
inputs:
- doc: Minimum length (columns) required for alignment to be output
  id: min_cols
  inputBinding:
    prefix: --mincols
  type: long
- doc: Should blocks be chopped to only portion overlapping (no by default)
  id: chop
  inputBinding:
    prefix: --chop
  type: boolean
- doc: Use this src for all intervals
  id: src
  inputBinding:
    prefix: --src
  type: string
- doc: Prepend this to each src before lookup
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: Write each interval as a separate file in this directory
  id: dir
  inputBinding:
    prefix: --dir
  type: string
- doc: Strand is included as an additional column, and the blocks are reverse complemented
    (if necessary) so that they are always on that strand w/r/t the src species.
  id: strand
  inputBinding:
    prefix: --strand
  type: boolean
- doc: Use a cache that keeps blocks of the MAF files in memory (requires ~20MB per
    MAF)
  id: use_cache
  inputBinding:
    prefix: --usecache
  type: boolean
