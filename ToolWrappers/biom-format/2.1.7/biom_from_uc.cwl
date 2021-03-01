class: CommandLineTool
id: biom_from_uc.cwl
inputs:
- id: in_input_fp
  doc: The input uc filepath.  [required]
  type: File?
  inputBinding:
    prefix: --input-fp
- id: in_output_fp
  doc: The output BIOM filepath  [required]
  type: File?
  inputBinding:
    prefix: --output-fp
- id: in_rep_set_fp
  doc: "Fasta file containing representative sequences with\nwhere sequences are labeled\
    \ with OTU identifiers, and\ndescription fields contain original sequence\nidentifiers.\
    \ This output is created, for example, by\nvsearch with the --relabel_sha1 --relabel_keep\n\
    options."
  type: File?
  inputBinding:
    prefix: --rep-set-fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fp
  doc: The output BIOM filepath  [required]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fp)
- id: out_rep_set_fp
  doc: "Fasta file containing representative sequences with\nwhere sequences are labeled\
    \ with OTU identifiers, and\ndescription fields contain original sequence\nidentifiers.\
    \ This output is created, for example, by\nvsearch with the --relabel_sha1 --relabel_keep\n\
    options."
  type: File?
  outputBinding:
    glob: $(inputs.in_rep_set_fp)
hints: []
cwlVersion: v1.1
baseCommand:
- biom
- from-uc
