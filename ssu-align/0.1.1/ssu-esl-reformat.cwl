#!/usr/bin/env cwl-runner

baseCommand:
- ssu-esl-reformat
class: CommandLineTool
cwlVersion: v1.0
id: ssu-esl-reformat
inputs:
- doc: stockholm pfam a2m psiblast afa
  id: fast_a
  inputBinding:
    position: 0
  type: string
- doc: ': convert to DNA alphabet (U->T)'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ': convert to lower case'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ': remove DNA IUPAC codes; convert ambig chars to N'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: ': send output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': convert to RNA alphabet (T->U)'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ': convert to upper case'
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: ': convert non-IUPAC chars (e.g. X) in DNA to N'
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: ': convert all gaps to character <c>'
  id: gap_sym
  inputBinding:
    prefix: --gapsym
  type: string
- doc: ': input sequence file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': remove columns containing all gaps (seqfile=MSA)'
  id: min_gap
  inputBinding:
    prefix: --mingap
  type: boolean
- doc: ': with --mingap, keep all nongap #=GC RF columns'
  id: keep_rf
  inputBinding:
    prefix: --keeprf
  type: boolean
- doc: ': remove columns containing any gaps (seqfile=MSA)'
  id: no_gap
  inputBinding:
    prefix: --nogap
  type: boolean
- doc: ': convert old RNA structure markup lines to WUSS'
  id: w_us_sify
  inputBinding:
    prefix: --wussify
  type: boolean
- doc: ': convert WUSS RNA structure markup to old format'
  id: de_wuss
  inputBinding:
    prefix: --dewuss
  type: boolean
- doc: ': convert simple WUSS notation to full (output) WUSS'
  id: full_wuss
  inputBinding:
    prefix: --fullwuss
  type: boolean
- doc: ': ignore input seq characters listed in string <s>'
  id: ignore
  inputBinding:
    prefix: --ignore
  type: string
- doc: ': accept input seq chars in string <s> as X'
  id: accept_x
  inputBinding:
    prefix: --acceptx
  type: string
- doc: ': rename and number each sequence <s>.<n>'
  id: rename
  inputBinding:
    prefix: --rename
  type: string
- doc: ': use minimal RAM, input must be pfam, ouput must be afa or pfam'
  id: small
  inputBinding:
    prefix: --small
  type: boolean
