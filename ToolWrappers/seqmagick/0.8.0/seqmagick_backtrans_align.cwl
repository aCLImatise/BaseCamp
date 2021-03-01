class: CommandLineTool
id: seqmagick_backtrans_align.cwl
inputs:
- id: in_out_file
  doc: 'Output destination. Default: STDOUT'
  type: File?
  inputBinding:
    prefix: --out-file
- id: in_translation_table
  doc: "Translation table to use. [Default: standard-\nambiguous]"
  type: string?
  inputBinding:
    prefix: --translation-table
- id: in_fail_action
  doc: "Action to take on an ambiguous codon [default: fail]\n"
  type: string?
  inputBinding:
    prefix: --fail-action
- id: in_protein_align
  doc: Protein Alignment
  type: string
  inputBinding:
    position: 0
- id: in_nucl_align
  doc: FASTA Alignment
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: 'Output destination. Default: STDOUT'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints: []
cwlVersion: v1.1
baseCommand:
- seqmagick
- backtrans-align
