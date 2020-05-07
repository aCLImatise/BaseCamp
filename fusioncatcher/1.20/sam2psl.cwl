class: CommandLineTool
id: sam2psl.py.cwl
inputs:
- id: read_seq
  doc: It adds to the PSL output as column 22, the sequence of the read. This is not
    anymore a valid PSL format.
  type: boolean
  inputBinding:
    prefix: --read-seq
- id: replace_read_ids
  doc: In the reads ids (also known as query name in PSL) the string specified here
    will be replaced with '/' (which is used in Solexa for /1 and /2).
  type: string
  inputBinding:
    prefix: --replace-read-ids
- id: output
  doc: The output file in PSL format.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- sam2psl.py
