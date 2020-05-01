#!/usr/bin/env cwl-runner

baseCommand:
- vcf-isec
class: CommandLineTool
cwlVersion: v1.0
id: vcf-isec
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: file_1vcf
  inputBinding:
    position: 1
  type: File
- doc: ''
  id: options
  inputBinding:
    position: 2
  type: string
- doc: Ignore lines where FILTER column is anything else than PASS or '.'
  id: apply_filters
  inputBinding:
    prefix: --apply-filters
  type: boolean
- doc: Output positions present in the first file but missing from the other files.
  id: complement
  inputBinding:
    prefix: --complement
  type: boolean
- doc: Debugging information
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Continue even if the script complains about differing columns, VCF versions,
    etc.
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: Print only entries from the left-most file. Without -o, all unique positions
    will be printed.
  id: one_file_only
  inputBinding:
    prefix: --one-file-only
  type: boolean
- doc: '[+-=]<int>             Output positions present in this many (=), this many
    or more (+), or this many or fewer (-) files.'
  id: n_files
  inputBinding:
    prefix: --nfiles
  type: boolean
- doc: If present, multiple files will be created with all possible isec combinations.
    (Suitable for Venn Diagram analysis.)
  id: prefix
  inputBinding:
    prefix: --prefix
  type: File
- doc: <list|file>           Do only the given regions (comma-separated list or one
    region per line in a file).
  id: regions
  inputBinding:
    prefix: --regions
  type: boolean
- doc: <chr:pos:file>            Tab-delimited file with indexes of chromosome and
    position columns. (1-based indexes)
  id: tab
  inputBinding:
    prefix: --tab
  type: boolean
- doc: In repetitive sequences, the same indel can be called at different positions.
    Consider records this far apart as matching (be it a SNP or an indel).
  id: win
  inputBinding:
    prefix: --win
  type: long
