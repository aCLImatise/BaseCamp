class: CommandLineTool
id: FlashLFQ.cwl
inputs:
- id: in_idt
  doc: Required. string; identification file path
  type: boolean
  inputBinding:
    prefix: --idt
- id: in_rep
  doc: Required. string; directory containing spectral data files
  type: boolean
  inputBinding:
    prefix: --rep
- id: in_sil
  doc: '(Default: false) bool; silent mode'
  type: boolean
  inputBinding:
    prefix: --sil
- id: in_out
  doc: string; output directory
  type: Directory
  inputBinding:
    prefix: --out
- id: in_nor
  doc: '(Default: false) bool; normalize intensity results'
  type: boolean
  inputBinding:
    prefix: --nor
- id: in_ppm
  doc: '(Default: 10) double; ppm tolerance'
  type: boolean
  inputBinding:
    prefix: --ppm
- id: in_iso
  doc: '(Default: 5) double; isotopic distribution tolerance in ppm'
  type: boolean
  inputBinding:
    prefix: --iso
- id: in_int
  doc: '(Default: false) bool; integrate peak areas (not recommended)'
  type: boolean
  inputBinding:
    prefix: --int
- id: in_nis
  doc: '(Default: 2) int; number of isotopes required to be observed'
  type: boolean
  inputBinding:
    prefix: --nis
- id: in_chg
  doc: '(Default: false) bool; use only precursor charge state'
  type: boolean
  inputBinding:
    prefix: --chg
- id: in_thr
  doc: '(Default: -1) int; number of CPU threads to use'
  type: boolean
  inputBinding:
    prefix: --thr
- id: in_mbr
  doc: '(Default: false) bool; match between runs'
  type: boolean
  inputBinding:
    prefix: --mbr
- id: in_mrt
  doc: '(Default: 2.5) double; maximum MBR window in minutes'
  type: boolean
  inputBinding:
    prefix: --mrt
- id: in_rmc
  doc: '(Default: false) bool; require MS/MS ID in condition'
  type: boolean
  inputBinding:
    prefix: --rmc
- id: in_bay
  doc: '(Default: false) bool; Bayesian protein fold-change analysis'
  type: boolean
  inputBinding:
    prefix: --bay
- id: in_ctr
  doc: string; control condition for Bayesian protein fold-change
  type: boolean
  inputBinding:
    prefix: --ctr
- id: in_mcm
  doc: "(Default: 3000) int; number of markov-chain monte carlo\niterations for the\
    \ Bayesian protein fold-change analysis"
  type: boolean
  inputBinding:
    prefix: --mcm
- id: in_bur
  doc: '(Default: 1000) int; number of markov-chain monte carlo burn-in'
  type: boolean
  inputBinding:
    prefix: --bur
- id: in_analysis
  doc: '--fcc        (Default: 0.1) double; fold-change cutoff for Bayesian protein'
  type: string
  inputBinding:
    position: 0
- id: in_iterations
  doc: '--sha        (Default: false) bool; use shared peptides for protein'
  type: string
  inputBinding:
    position: 0
- id: in_quantification
  doc: --rns        int; random seed for the Bayesian protein fold-change analysis
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: string; output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- FlashLFQ
