class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Tm.cwl
inputs:
- id: uncorrected
  doc: Do not use monovalent/divalent cation corrections
  type: boolean
  inputBinding:
    prefix: --uncorrected
- id: dna
  doc: DNA concentration (nM)
  type: string
  inputBinding:
    prefix: --dna
- id: na
  doc: Na+ concentration (mM)
  type: string
  inputBinding:
    prefix: --na
- id: mg
  doc: Mg++ concentration (mM)
  type: string
  inputBinding:
    prefix: --mg
- id: dntp
  doc: Nucleotide triphosphate concentration (mM)
  type: string
  inputBinding:
    prefix: --dntp
outputs: []
cwlVersion: v1.1
baseCommand:
- Tm
