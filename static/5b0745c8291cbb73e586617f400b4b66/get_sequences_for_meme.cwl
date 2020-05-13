class: CommandLineTool
id: get_sequences_for_meme.py_summary_file.cwl
inputs:
- id: summary_file
  doc: An output file of RILseq_significant_regions.py.
  type: string
  inputBinding:
    position: 0
- id: ec_dir
  doc: A EcoCyc dir of the bacteria.
  type: string
  inputBinding:
    position: 1
- id: out_head
  doc: Output file starts with this, ends with _1.fa, _2.fa
  type: string
  inputBinding:
    position: 2
- id: pad
  doc: 'Pad the sequences from both sides with this length. (default: 20)'
  type: string
  inputBinding:
    prefix: --pad
outputs: []
cwlVersion: v1.1
baseCommand:
- get_sequences_for_meme.py
- summary_file
