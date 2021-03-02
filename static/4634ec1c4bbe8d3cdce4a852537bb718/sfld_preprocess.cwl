class: CommandLineTool
id: sfld_preprocess.cwl
inputs:
- id: in_hmm
  doc: HMM file (input)
  type: File?
  inputBinding:
    prefix: --hmm
- id: in_sites
  doc: sites file (output)
  type: File?
  inputBinding:
    prefix: --sites
- id: in_alignments
  doc: alignments file (input)
  type: File?
  inputBinding:
    prefix: --alignments
- id: in_hmm_dir
  doc: SFLD HMM directory (overrides $SFLD_LIB_DIR)
  type: Directory?
  inputBinding:
    prefix: --hmm_dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sites
  doc: sites file (output)
  type: File?
  outputBinding:
    glob: $(inputs.in_sites)
hints: []
cwlVersion: v1.1
baseCommand:
- sfld_preprocess
