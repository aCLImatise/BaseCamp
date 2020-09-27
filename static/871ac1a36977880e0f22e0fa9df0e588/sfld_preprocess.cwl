class: CommandLineTool
id: sfld_preprocess.cwl
inputs:
- id: in_hmm
  doc: '| -m FILE    HMM file (input)'
  type: boolean
  inputBinding:
    prefix: --hmm
- id: in_sites
  doc: '| -s FILE    sites file (output)'
  type: File
  inputBinding:
    prefix: --sites
- id: in_alignments
  doc: '| -a FILE    alignments file (input)'
  type: boolean
  inputBinding:
    prefix: --alignments
- id: in_hmm_dir
  doc: '| -d DIR     SFLD HMM directory (overrides $SFLD_LIB_DIR)'
  type: boolean
  inputBinding:
    prefix: --hmm_dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sites
  doc: '| -s FILE    sites file (output)'
  type: File
  outputBinding:
    glob: $(inputs.in_sites)
cwlVersion: v1.1
baseCommand:
- sfld_preprocess
