class: CommandLineTool
id: ssu_esl_weight.cwl
inputs:
- id: in_gersteinsonnhammerchothia_tree_weights
  doc: ': Gerstein/Sonnhammer/Chothia tree weights  [default]'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_henikoff_positionbased_weights
  doc: ': Henikoff position-based weights'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_henikoff_simple_filter
  doc: ': Henikoff simple filter weights'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_filter_seqs_fractional
  doc: ': filter out seqs by fractional identity'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_send_output_file
  doc: ': send output to file <f>, not stdout'
  type: File?
  inputBinding:
    prefix: -o
- id: in_id
  doc: ': for -b: set identity cutoff  [0.62]  (0<=x<=1)'
  type: double?
  inputBinding:
    prefix: --id
- id: in_idf
  doc: ': for -f: set identity cutoff  [0.80]  (0<=x<=1)'
  type: double?
  inputBinding:
    prefix: --idf
- id: in_in_format
  doc: ': specify that input file is in format <s>'
  type: File?
  inputBinding:
    prefix: --informat
- id: in_amino
  doc: ': <msa file> contains protein alignments'
  type: boolean?
  inputBinding:
    prefix: --amino
- id: in_dna
  doc: ': <msa file> contains DNA alignments'
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: ': <msa file> contains RNA alignments'
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_msa_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_send_output_file
  doc: ': send output to file <f>, not stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_send_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-weight
