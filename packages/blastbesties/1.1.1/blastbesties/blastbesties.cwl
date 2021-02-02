class: CommandLineTool
id: blastbesties.cwl
inputs:
- id: in_blast_a_vb
  doc: "Blast tab result file for fastaA query against fastaB\nsubject"
  type: File
  inputBinding:
    prefix: --blastAvB
- id: in_blast_bva
  doc: "Blast tab result file for fastaB query against fastaA\nsubject"
  type: File
  inputBinding:
    prefix: --blastBvA
- id: in_min_len
  doc: Minimum length of hit to consider valid.
  type: long
  inputBinding:
    prefix: --minLen
- id: in_eval
  doc: Maximum e-value to consider valid pair.
  type: string
  inputBinding:
    prefix: --eVal
- id: in_bit_score
  doc: Minimum bitscore to consider valid pair.
  type: string
  inputBinding:
    prefix: --bitScore
- id: in_outfile
  doc: Write reciprocal blast pairs to this file.
  type: File
  inputBinding:
    prefix: --outFile
- id: in_outdir
  doc: "Directory for new sequence files to be written to.\n"
  type: Directory
  inputBinding:
    prefix: --outDir
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- blastbesties
