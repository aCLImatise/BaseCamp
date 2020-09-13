class: CommandLineTool
id: ../../../bcbio_vm.py.cwl
inputs:
- id: in_datadir
  doc: Directory with genome data and associated files.
  type: Directory
  inputBinding:
    prefix: --datadir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
