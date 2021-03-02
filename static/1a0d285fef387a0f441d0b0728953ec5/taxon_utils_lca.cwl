class: CommandLineTool
id: taxon_utils_lca.cwl
inputs:
- id: in_taxonomy
  doc: Taxonomy file  [required]
  type: File?
  inputBinding:
    prefix: --taxonomy
- id: in_no_lca
  doc: File to which write records with no LCA
  type: File?
  inputBinding:
    prefix: --no-lca
- id: in_only_ranked
  doc: "If set, only taxa that have a rank will be\nused in the lineageself. This\
    \ is not advised\nfor lineages such as Viruses, where the top\nlevels have no\
    \ rank"
  type: boolean?
  inputBinding:
    prefix: --only-ranked
- id: in_bit_score
  doc: 'Minimum bitscore accepted  [default: 0]'
  type: double?
  inputBinding:
    prefix: --bitscore
- id: in_rename
  doc: "Emulates BLAST behaviour for headers (keep\nleft of first space)"
  type: boolean?
  inputBinding:
    prefix: --rename
- id: in_sorted
  doc: "If the GFF file is sorted (all of a sequence\nannotations are contiguos) can\
    \ use less\nmemory, `sort -s -k 1,1` can be used"
  type: boolean?
  inputBinding:
    prefix: --sorted
- id: in_feat_type
  doc: "Feature type used if the output is a GFF\n(default is *LCA*)  [default: LCA]"
  type: string?
  inputBinding:
    prefix: --feat-type
- id: in_reference
  doc: "Reference file for the GFF, if supplied a\nGFF file is the output"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_simple_table
  doc: "Uses a 2 column table format (seq_id\ntaxon_id) TAB separated"
  type: boolean?
  inputBinding:
    prefix: --simple-table
- id: in_krona_total
  doc: "Total number of raw sequences (used to\noutput correct percentages in Krona"
  type: long?
  inputBinding:
    prefix: --krona-total
- id: in_out_format
  doc: "[krona|json|tab|gff]\nFormat of output file  [default: tab]"
  type: File?
  inputBinding:
    prefix: --out-format
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_gff_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_reference
  doc: "Reference file for the GFF, if supplied a\nGFF file is the output"
  type: File?
  outputBinding:
    glob: $(inputs.in_reference)
- id: out_out_format
  doc: "[krona|json|tab|gff]\nFormat of output file  [default: tab]"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_format)
hints: []
cwlVersion: v1.1
baseCommand:
- taxon-utils
- lca
