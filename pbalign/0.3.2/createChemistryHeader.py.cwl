class: CommandLineTool
id: ../../../createChemistryHeader.py.cwl
inputs:
- id: in_debug
  doc: 'Output detailed log information. (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_bas_files
  doc: "The bas or bax files containing the reads that were\naligned in the input_alignment_file.\
    \ Also can be a\nfofn of bas or bax files. (default: None)\n"
  type: string[]
  inputBinding:
    prefix: --bas_files
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- createChemistryHeader.py
