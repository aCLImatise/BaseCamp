class: CommandLineTool
id: filterIntronsFindStrand.pl.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- filterIntronsFindStrand.pl
