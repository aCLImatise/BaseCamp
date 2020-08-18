class: CommandLineTool
id: ../../../sam2psl.py.cwl
inputs:
- id: input
  doc: The input file in SAM format.
  type: string
  inputBinding:
    prefix: --input
- id: skip_conversion_cigar_one_dot_three
  doc: By default if the CIGAR strings in the input SAM file are in the format defined
    in SAM version 1.4 (i.e. there are 'X' and '=') then the CIGAR string will be
    first converted into CIGAR string, which is described in SAM version 1.3, (i.e.
    there are no 'X' and '=' which are replaced with 'M') and afterwards into PSL
    format. Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --skip-conversion-cigar-1.3
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
