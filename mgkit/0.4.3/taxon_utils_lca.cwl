class: CommandLineTool
id: taxon_utils_lca.cwl
inputs:
- id: taxonomy
  doc: Taxonomy file  [required]
  type: string
  inputBinding:
    prefix: --taxonomy
- id: no_lca
  doc: File to which write records with no LCA
  type: File
  inputBinding:
    prefix: --no-lca
- id: only_ranked
  doc: If set, only taxa that have a rank will be used in the lineageself. This is
    not advised for lineages such as Viruses, where the top levels have no rank
  type: boolean
  inputBinding:
    prefix: --only-ranked
- id: bit_score
  doc: 'Minimum bitscore accepted  [default: 0]'
  type: double
  inputBinding:
    prefix: --bitscore
- id: rename
  doc: Emulates BLAST behaviour for headers (keep left of first space)
  type: boolean
  inputBinding:
    prefix: --rename
- id: sorted
  doc: If the GFF file is sorted (all of a sequence annotations are contiguos) can
    use less memory, `sort -s -k 1,1` can be used
  type: boolean
  inputBinding:
    prefix: --sorted
- id: feat_type
  doc: 'Feature type used if the output is a GFF (default is *LCA*)  [default: LCA]'
  type: string
  inputBinding:
    prefix: --feat-type
- id: reference
  doc: Reference file for the GFF, if supplied a GFF file is the output
  type: File
  inputBinding:
    prefix: --reference
- id: simple_table
  doc: Uses a 2 column table format (seq_id taxon_id) TAB separated
  type: boolean
  inputBinding:
    prefix: --simple-table
- id: krona_total
  doc: Total number of raw sequences (used to output correct percentages in Krona
  type: long
  inputBinding:
    prefix: --krona-total
- id: out_format
  doc: '[krona|json|tab|gff] Format of output file  [default: tab]'
  type: boolean
  inputBinding:
    prefix: --out-format
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- taxon-utils
- lca
