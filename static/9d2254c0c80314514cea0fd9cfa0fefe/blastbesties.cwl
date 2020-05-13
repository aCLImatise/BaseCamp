class: CommandLineTool
id: blastbesties.cwl
inputs:
- id: blast_a_vb
  doc: Blast tab result file for fastaA query against fastaB subject
  type: string
  inputBinding:
    prefix: --blastAvB
- id: blast_bva
  doc: Blast tab result file for fastaB query against fastaA subject
  type: string
  inputBinding:
    prefix: --blastBvA
- id: min_len
  doc: Minimum length of hit to consider valid.
  type: long
  inputBinding:
    prefix: --minLen
- id: eval
  doc: Maximum e-value to consider valid pair.
  type: string
  inputBinding:
    prefix: --eVal
- id: bit_score
  doc: Minimum bitscore to consider valid pair.
  type: string
  inputBinding:
    prefix: --bitScore
- id: outfile
  doc: Write reciprocal blast pairs to this file.
  type: string
  inputBinding:
    prefix: --outFile
- id: outdir
  doc: Directory for new sequence files to be written to.
  type: string
  inputBinding:
    prefix: --outDir
outputs: []
cwlVersion: v1.1
baseCommand:
- blastbesties
