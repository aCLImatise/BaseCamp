class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/filterIntronsFindStrand.pl.cwl
inputs:
- id: allowed
  doc: ',gcag,atac        Allowed acceptor and donor splice site types'
  type: string
  inputBinding:
    prefix: --allowed
- id: score
  doc: Set score to 'mult' entry or '1', if the last column does not contain a 'mult'
    entry
  type: boolean
  inputBinding:
    prefix: --score
- id: genome
  doc: see above
  type: string
  inputBinding:
    prefix: --genome
- id: introns
  doc: see above
  type: long
  inputBinding:
    prefix: --introns
- id: genome_dot_fa
  doc: DNA file in fasta format
  type: string
  inputBinding:
    position: 0
- id: introns_dot_gff
  doc: corresponding introns file in gff format
  type: long
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- filterIntronsFindStrand.pl
