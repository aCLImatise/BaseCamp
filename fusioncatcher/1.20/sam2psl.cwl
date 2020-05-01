#!/usr/bin/env cwl-runner

baseCommand:
- sam2psl.py
class: CommandLineTool
cwlVersion: v1.0
id: sam2psl.py
inputs:
- doc: It adds to the PSL output as column 22, the sequence of the read. This is not
    anymore a valid PSL format.
  id: read_seq
  inputBinding:
    prefix: --read-seq
  type: boolean
- doc: In the reads ids (also known as query name in PSL) the string specified here
    will be replaced with '/' (which is used in Solexa for /1 and /2).
  id: replace_read_ids
  inputBinding:
    prefix: --replace-read-ids
  type: string
- doc: The output file in PSL format.
  id: output
  inputBinding:
    prefix: --output
  type: string
