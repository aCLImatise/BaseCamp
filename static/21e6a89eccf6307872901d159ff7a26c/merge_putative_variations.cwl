class: CommandLineTool
id: merge_putative_variations.cwl
inputs:
- id: m
  doc: '[ --min_weight ] arg (=1) Minimal weight to be printed (default=1).'
  type: boolean
  inputBinding:
    prefix: -m
- id: l
  doc: '[ --min_length ] arg (=0) Minimum length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: w
  doc: '[ --sort_by_weight ]      Sort by weight (default: by position)'
  type: boolean
  inputBinding:
    prefix: -w
- id: f
  doc: '[ --filter ] arg          Filter file; only retain deletions in the given  file.'
  type: boolean
  inputBinding:
    prefix: -f
- id: a
  doc: '[ --all_from_filter ]     Output all variations in the given filter set.'
  type: boolean
  inputBinding:
    prefix: -a
- id: i
  doc: '[ --input_file ] arg      Input file with variants (equivalent to  specifying
    input files as positional arguments).'
  type: boolean
  inputBinding:
    prefix: -I
outputs: []
cwlVersion: v1.1
baseCommand:
- merge-putative-variations
