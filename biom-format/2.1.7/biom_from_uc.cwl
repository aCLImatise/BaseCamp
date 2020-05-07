class: CommandLineTool
id: biom_from_uc.cwl
inputs:
- id: input_fp
  doc: The input uc filepath.  [required]
  type: File
  inputBinding:
    prefix: --input-fp
- id: output_fp
  doc: The output BIOM filepath  [required]
  type: File
  inputBinding:
    prefix: --output-fp
- id: rep_set_fp
  doc: Fasta file containing representative sequences with where sequences are labeled
    with OTU identifiers, and description fields contain original sequence identifiers.
    This output is created, for example, by vsearch with the --relabel_sha1 --relabel_keep
    options.
  type: File
  inputBinding:
    prefix: --rep-set-fp
outputs: []
cwlVersion: v1.1
baseCommand:
- biom
- from-uc
