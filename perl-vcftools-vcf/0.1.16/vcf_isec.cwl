class: CommandLineTool
id: vcf_isec.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_1vcf
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: apply_filters
  doc: Ignore lines where FILTER column is anything else than PASS or '.'
  type: boolean
  inputBinding:
    prefix: --apply-filters
- id: complement
  doc: Output positions present in the first file but missing from the other files.
  type: boolean
  inputBinding:
    prefix: --complement
- id: debug
  doc: Debugging information
  type: boolean
  inputBinding:
    prefix: --debug
- id: force
  doc: Continue even if the script complains about differing columns, VCF versions,
    etc.
  type: boolean
  inputBinding:
    prefix: --force
- id: one_file_only
  doc: Print only entries from the left-most file. Without -o, all unique positions
    will be printed.
  type: boolean
  inputBinding:
    prefix: --one-file-only
- id: n_files
  doc: '[+-=]<int>             Output positions present in this many (=), this many
    or more (+), or this many or fewer (-) files.'
  type: boolean
  inputBinding:
    prefix: --nfiles
- id: prefix
  doc: If present, multiple files will be created with all possible isec combinations.
    (Suitable for Venn Diagram analysis.)
  type: File
  inputBinding:
    prefix: --prefix
- id: regions
  doc: <list|file>           Do only the given regions (comma-separated list or one
    region per line in a file).
  type: boolean
  inputBinding:
    prefix: --regions
- id: tab
  doc: <chr:pos:file>            Tab-delimited file with indexes of chromosome and
    position columns. (1-based indexes)
  type: boolean
  inputBinding:
    prefix: --tab
- id: win
  doc: In repetitive sequences, the same indel can be called at different positions.
    Consider records this far apart as matching (be it a SNP or an indel).
  type: long
  inputBinding:
    prefix: --win
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-isec
