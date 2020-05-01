#!/usr/bin/env cwl-runner

baseCommand:
- Tm
class: CommandLineTool
cwlVersion: v1.0
id: tm
inputs:
- doc: nucleotide sequence
  id: seq
  inputBinding:
    position: 0
  type: string
- doc: Do not use monovalent/divalent cation corrections
  id: uncorrected
  inputBinding:
    prefix: --uncorrected
  type: boolean
- doc: DNA concentration (nM)
  id: dna
  inputBinding:
    prefix: --dna
  type: string
- doc: Na+ concentration (mM)
  id: na
  inputBinding:
    prefix: --na
  type: string
- doc: Mg++ concentration (mM)
  id: mg
  inputBinding:
    prefix: --mg
  type: string
- doc: Nucleotide triphosphate concentration (mM)
  id: dntp
  inputBinding:
    prefix: --dntp
  type: string
