class: CommandLineTool
id: FlashLFQ.cwl
inputs:
- id: idt
  doc: Required. string; identification file path
  type: boolean
  inputBinding:
    prefix: --idt
- id: rep
  doc: Required. string; directory containing spectral data files
  type: boolean
  inputBinding:
    prefix: --rep
- id: sil
  doc: '(Default: false) bool; silent mode'
  type: boolean
  inputBinding:
    prefix: --sil
- id: out
  doc: string; output directory
  type: boolean
  inputBinding:
    prefix: --out
- id: nor
  doc: '(Default: false) bool; normalize intensity results'
  type: boolean
  inputBinding:
    prefix: --nor
- id: ppm
  doc: '(Default: 10) double; ppm tolerance'
  type: boolean
  inputBinding:
    prefix: --ppm
- id: iso
  doc: '(Default: 5) double; isotopic distribution tolerance in ppm'
  type: boolean
  inputBinding:
    prefix: --iso
- id: int
  doc: '(Default: false) bool; integrate peak areas (not recommended)'
  type: boolean
  inputBinding:
    prefix: --int
- id: nis
  doc: '(Default: 2) int; number of isotopes required to be observed'
  type: boolean
  inputBinding:
    prefix: --nis
- id: chg
  doc: '(Default: false) bool; use only precursor charge state'
  type: boolean
  inputBinding:
    prefix: --chg
- id: thr
  doc: '(Default: -1) int; number of CPU threads to use'
  type: boolean
  inputBinding:
    prefix: --thr
- id: mbr
  doc: '(Default: false) bool; match between runs'
  type: boolean
  inputBinding:
    prefix: --mbr
- id: mrt
  doc: '(Default: 2.5) double; maximum MBR window in minutes'
  type: boolean
  inputBinding:
    prefix: --mrt
- id: rmc
  doc: '(Default: false) bool; require MS/MS ID in condition'
  type: boolean
  inputBinding:
    prefix: --rmc
- id: bay
  doc: '(Default: false) bool; Bayesian protein fold-change analysis'
  type: boolean
  inputBinding:
    prefix: --bay
- id: ctr
  doc: string; control condition for Bayesian protein fold-change analysis
  type: boolean
  inputBinding:
    prefix: --ctr
- id: fcc
  doc: '(Default: 0.1) double; fold-change cutoff for Bayesian protein fold-change
    analysis'
  type: boolean
  inputBinding:
    prefix: --fcc
- id: mcm
  doc: '(Default: 3000) int; number of markov-chain monte carlo iterations for the
    Bayesian protein fold-change analysis'
  type: boolean
  inputBinding:
    prefix: --mcm
- id: bur
  doc: '(Default: 1000) int; number of markov-chain monte carlo burn-in iterations'
  type: boolean
  inputBinding:
    prefix: --bur
- id: sha
  doc: '(Default: false) bool; use shared peptides for protein quantification'
  type: boolean
  inputBinding:
    prefix: --sha
- id: rns
  doc: int; random seed for the Bayesian protein fold-change analysis
  type: boolean
  inputBinding:
    prefix: --rns
outputs: []
cwlVersion: v1.1
baseCommand:
- FlashLFQ
