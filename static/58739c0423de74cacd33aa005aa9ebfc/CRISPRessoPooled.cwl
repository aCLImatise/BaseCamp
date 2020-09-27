class: CommandLineTool
id: CRISPRessoPooled.cwl
inputs:
- id: in_analysis
  doc: "CRISPR/Cas9 outcomes from POOLED deep sequencing data-\n)                \
    \                            )"
  type: long
  inputBinding:
    prefix: -Analysis
- id: in_trim_sequences
  doc: Enable the trimming of Illumina adapters with
  type: boolean
  inputBinding:
    prefix: --trim_sequences
- id: in_ignore_insertions
  doc: Ignore insertions events for the quantification and
  type: boolean
  inputBinding:
    prefix: --ignore_insertions
- id: in_ignore_deletions
  doc: Ignore deletions events for the quantification and
  type: boolean
  inputBinding:
    prefix: --ignore_deletions
- id: in_keep_intermediate
  doc: 'Keep all the intermediate files (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_intermediate
- id: in_dump
  doc: Dump numpy arrays and pandas dataframes to file for
  type: boolean
  inputBinding:
    prefix: --dump
- id: in_save_also_png
  doc: Save also .png images additionally to .pdf files
  type: boolean
  inputBinding:
    prefix: --save_also_png
- id: in_f
  doc: ''
  type: File
  inputBinding:
    prefix: -f
- id: in_r_two
  doc: ''
  type: long
  inputBinding:
    prefix: -r2
- id: in_r_one
  doc: ''
  type: long
  inputBinding:
    prefix: -r1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CRISPRessoPooled
