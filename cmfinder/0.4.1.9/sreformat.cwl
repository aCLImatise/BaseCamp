#!/usr/bin/env cwl-runner

baseCommand:
- sreformat
class: CommandLineTool
cwlVersion: v1.0
id: sreformat
inputs:
- doc: stockholm
  id: fast_a
  inputBinding:
    position: 0
  type: string
- doc: msf
  id: embl
  inputBinding:
    position: 1
  type: string
- doc: a2m
  id: genbank
  inputBinding:
    position: 2
  type: string
- doc: phylip
  id: gcg
  inputBinding:
    position: 3
  type: string
- doc: clustal
  id: gcg_data
  inputBinding:
    position: 4
  type: string
- doc: selex
  id: pir
  inputBinding:
    position: 5
  type: string
- doc: eps
  id: raw
  inputBinding:
    position: 6
  type: string
- doc: ': force DNA alphabet for nucleic acid sequence'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ': force RNA alphabet for nucleic acid sequence'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ': force lower case'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ': force upper case'
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: ": convert non-IUPAC chars (i.e. X's) in DNA to N's for IUPAC/BLAST compatibility"
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: ": remove IUPAC codes; convert all ambiguous chars in DNA/RNA to N's"
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: ': input sequence file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': remove columns containing all gaps (seqfile=alignment)'
  id: min_gap
  inputBinding:
    prefix: --mingap
  type: boolean
- doc: ': remove columns containing any gaps (seqfile=alignment)'
  id: no_gap
  inputBinding:
    prefix: --nogap
  type: boolean
- doc: ': modify Stockholm format output to be in PFAM style (1 line/seq)'
  id: pfam
  inputBinding:
    prefix: --pfam
  type: boolean
- doc: ': try to convert gaps to SAM style (seqfile=alignment)'
  id: sam
  inputBinding:
    prefix: --sam
  type: boolean
- doc: ': convert to SAM convention; cols w/ gapfrac > x are inserts'
  id: sam_frac
  inputBinding:
    prefix: --samfrac
  type: string
- doc: ": convert all gaps to character '<c>'"
  id: gap_sym
  inputBinding:
    prefix: --gapsym
  type: string
- doc: ': convert old format RNA structure markup lines to WUSS'
  id: w_us_sify
  inputBinding:
    prefix: --wussify
  type: boolean
- doc: ': convert WUSS notation RNA structure markup lines to old format'
  id: de_wuss
  inputBinding:
    prefix: --dewuss
  type: boolean
