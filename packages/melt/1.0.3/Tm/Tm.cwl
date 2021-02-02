class: CommandLineTool
id: Tm.cwl
inputs:
- id: in_uncorrected
  doc: Do not use monovalent/divalent cation corrections
  type: boolean
  inputBinding:
    prefix: --uncorrected
- id: in_dna
  doc: DNA concentration (nM)
  type: string
  inputBinding:
    prefix: --dna
- id: in_na
  doc: Na+ concentration (mM)
  type: string
  inputBinding:
    prefix: --na
- id: in_mg
  doc: Mg++ concentration (mM)
  type: string
  inputBinding:
    prefix: --mg
- id: in_dntp
  doc: Nucleotide triphosphate concentration (mM)
  type: string
  inputBinding:
    prefix: --dntp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Tm
