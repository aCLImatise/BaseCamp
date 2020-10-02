class: CommandLineTool
id: centroid_homfold.cwl
inputs:
- id: in_arg_fasta_file
  doc: '[ --homologous ] arg fasta file containing homologous sequences (REQUIRED)'
  type: boolean
  inputBinding:
    prefix: -H
- id: in_engine_s
  doc: "specify the inference engine for secondary structures\n(default: \"McCaskill\"\
    )"
  type: string
  inputBinding:
    prefix: --engine_s
- id: in_engine_a
  doc: "specify the inference engine for pairwise alignments\n(default: \"CONTRAlign\"\
    )"
  type: string
  inputBinding:
    prefix: --engine_a
- id: in_arg_weight_base
  doc: '[ --gamma ] arg      weight of base pairs'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_arg_thereshold_base
  doc: "[ --threshold ] arg  thereshold of base pairs (this option overwrites\n'gamma')"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_ea
  doc: compute (pseudo-)expected accuracy
  type: boolean
  inputBinding:
    prefix: --ea
- id: in_arg_specify_filename
  doc: "[ --output ] arg     specify filename to output predicted secondary\nstructures.\
    \ If empty, use the standard output."
  type: File
  inputBinding:
    prefix: -o
- id: in_posteriors
  doc: "output base-pairing probability matrices which\ncontain base-pairing probabilities\
    \ more than the\ngiven value."
  type: string
  inputBinding:
    prefix: --posteriors
- id: in_o_posteriors
  doc: "specify filename to output base-pairing probability\nmatrices. If empty, use\
    \ the standard output."
  type: File
  inputBinding:
    prefix: --oposteriors
- id: in_postscript
  doc: "draw predicted secondary structures with the\npostscript (PS) format"
  type: string
  inputBinding:
    prefix: --postscript
- id: in_params
  doc: use the parameter file
  type: File
  inputBinding:
    prefix: --params
- id: in_seq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_specify_filename
  doc: "[ --output ] arg     specify filename to output predicted secondary\nstructures.\
    \ If empty, use the standard output."
  type: File
  outputBinding:
    glob: $(inputs.in_arg_specify_filename)
- id: out_o_posteriors
  doc: "specify filename to output base-pairing probability\nmatrices. If empty, use\
    \ the standard output."
  type: File
  outputBinding:
    glob: $(inputs.in_o_posteriors)
cwlVersion: v1.1
baseCommand:
- centroid_homfold
