class: CommandLineTool
id: ExpaRNA.cwl
inputs:
- id: s
  doc: '#   : # minmal size of an EPM (gamma) 2 is default and returns all EPMs with
    at least 2 nucleotides'
  type: boolean
  inputBinding:
    prefix: -s
- id: n
  doc: '#   : # determines the maximal number of returned EPMs 0 is default an returns
    all EPMs 1 is the largest EPM and so on...'
  type: boolean
  inputBinding:
    prefix: -n
- id: t
  doc: '#   : 1: initial EPM score = EPM size (default) : 2: initial EPM score = (EPM
    size)^2 (prefers larger patterns in LCS-EPM)'
  type: boolean
  inputBinding:
    prefix: -t
- id: g
  doc: ': Do NOT ignore gaps in input sequences'
  type: boolean
  inputBinding:
    prefix: -g
- id: d
  doc: '#   : write all output to dir <#>'
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: ": write LCS-EPM into file 'LCSEPM_align.aln' as alignment"
  type: boolean
  inputBinding:
    prefix: -o
- id: i
  doc: ": write LCS-EPM into file 'LCSEPM_LocARNA_input.fa' as constraint input for\
    \ LocARNA"
  type: boolean
  inputBinding:
    prefix: -i
- id: e
  doc: ": write LCS-EPM into file 'LCSEPM.epm' as single EPMs"
  type: boolean
  inputBinding:
    prefix: -e
- id: a
  doc: ": write all EPMs into file 'allEPM.epm' (depends on -s/ -n)"
  type: boolean
  inputBinding:
    prefix: -a
- id: p
  doc: ': DO NOT save LCS-EPM as colored postscript file'
  type: boolean
  inputBinding:
    prefix: -p
- id: a
  doc: ': determine similarity/differences of LCS-EPM with reference alignment via
    two colored postscript files'
  type: boolean
  inputBinding:
    prefix: -A
- id: v
  doc: ': verbose output'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- ExpaRNA
