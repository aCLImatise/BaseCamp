class: CommandLineTool
id: fragments_fusion_genes.py.cwl
inputs:
- id: fusion_reads
  doc: Input file containing preliminary fusion genes and the supporting paired-reads.
  type: string
  inputBinding:
    prefix: --fusion-reads
- id: minimum
  doc: Preliminary fusion genes which have the number of paired-reads strictly less
    than this value will be written in the output. Default is '0'.
  type: long
  inputBinding:
    prefix: --minimum
- id: fragments
  doc: The output file containing the preliminary fusion genes which have supporting
    paired-reads stricly less the given minimum value.
  type: string
  inputBinding:
    prefix: --fragments
outputs: []
cwlVersion: v1.1
baseCommand:
- fragments_fusion_genes.py
