class: CommandLineTool
id: deseq2_preprocess.py.cwl
inputs:
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_var
  doc: "Experimental variable suspected to have an impact on\nOTUs abundances. You\
    \ may precise complexe string such\nas variables with confounding effect (ex:\n\
    Treatment+Gender or Treatmet*Gender)"
  type: string?
  inputBinding:
    prefix: --var
- id: in_data
  doc: "The path of RData file containing a phyloseq object,\nresult of FROGS Phyloseq\
    \ Import Data"
  type: File?
  inputBinding:
    prefix: --data
- id: in_out_r_data
  doc: "The path to store resulting dataframe of DESeq2.\n[Default: DESeq2_preprocess.Rdata]"
  type: File?
  inputBinding:
    prefix: --out-Rdata
- id: in_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.2--py37_0
cwlVersion: v1.1
baseCommand:
- deseq2_preprocess.py
