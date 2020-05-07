class: CommandLineTool
id: createChemistryHeader.py.cwl
inputs:
- id: input_alignment_file
  doc: A SAM or BAM file produced by BLASR.
  type: string
  inputBinding:
    position: 0
- id: output_header_file
  doc: Name of the SAM or BAM header file that will be created with chemistry information
    loaded.
  type: string
  inputBinding:
    position: 1
- id: debug
  doc: 'Output detailed log information. (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: bas_files
  doc: 'The bas or bax files containing the reads that were aligned in the input_alignment_file.
    Also can be a fofn of bas or bax files. (default: None)'
  type: string[]
  inputBinding:
    prefix: --bas_files
outputs: []
cwlVersion: v1.1
baseCommand:
- createChemistryHeader.py
