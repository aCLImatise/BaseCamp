#!/usr/bin/env cwl-runner

baseCommand:
- ssu-cmemit
class: CommandLineTool
cwlVersion: v1.0
id: ssu-cmemit
inputs:
- doc: ''
  id: cm_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: sequence_output_file
  inputBinding:
    position: 1
  type: string
- doc: ': generate <n> sequences  [10]  (n>0)'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: ': write generated sequences as unaligned FASTA  [default]'
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: ': write generated sequences as a STOCKHOLM alignment'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': generate a single "consensus" sequence only'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ': local; emit from a locally configured model'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ': start sequence numbering at <n>  [1]  (n>0)'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ': set random number generator seed to <n>  [0]  (n>=0)'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: ': show list of otherwise undocumented developer options'
  id: devhelp
  inputBinding:
    prefix: --devhelp
  type: boolean
- doc: ': output alignment as RNA sequence data  [default]'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': output alignment as DNA (not RNA) sequence data'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': with -a, output alnment in interleaved Stockholm format'
  id: i_leaved
  inputBinding:
    prefix: --ileaved
  type: boolean
- doc: ': dump parsetrees to file <f>'
  id: t_file
  inputBinding:
    prefix: --tfile
  type: string
- doc: ': exponentiate CM probabilities by <x> before emitting  (x>0)'
  id: exp
  inputBinding:
    prefix: --exp
  type: string
- doc: ': truncate alignment, begin at match column <n>  (n>=1)'
  id: begin
  inputBinding:
    prefix: --begin
  type: string
- doc: ': truncate alignment,   end at match column <n>  (n>=1)'
  id: end
  inputBinding:
    prefix: --end
  type: string
