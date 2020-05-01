#!/usr/bin/env cwl-runner

baseCommand:
- mdasim
class: CommandLineTool
cwlVersion: v1.0
id: mdasim
inputs:
- doc: ''
  id: optional
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: args
  inputBinding:
    position: 1
  type: string
- doc: = file name for a log file of all single nucleotide errors that happen during
    amplification
  id: log
  inputBinding:
    prefix: --log
  type: boolean
- doc: = chance of a nucleotide substitution
  id: mutation_rate
  inputBinding:
    prefix: --mutationrate
  type: boolean
- doc: extended verbose for debug mode
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: '= file name of reference DNA sequence (default: reference.fasta)'
  id: input
  inputBinding:
    prefix: --input
  type: boolean
- doc: '= output files prefix , `Amplicons.fasta` will be appended to the prefix (default:
    out)'
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: writes the lists of fragments and primer positions at the end of simulation
    in two txt files suffixed by Fragments.txt and PrimerPositions.txt
  id: output_fragments
  inputBinding:
    prefix: --outputfragments
  type: boolean
- doc: '= file name of input primers in fasta format (default: primerList.fasta)'
  id: primers
  inputBinding:
    prefix: --primers
  type: boolean
- doc: '= average number of initial available primers (default: input reference length
    * coverage / frgLngth * 1000)'
  id: primer_no
  inputBinding:
    prefix: --primerNo
  type: boolean
- doc: '= average number of synthesized bases per phi29 (default: 70,000 nt; synthesized
    bases per phi29 has uniform distribution; variance = frgLngth^2 / 1200)'
  id: frg_lng_th
  inputBinding:
    prefix: --frgLngth
  type: boolean
- doc: '= expected average coverage (default: 1000)'
  id: coverage
  inputBinding:
    prefix: --coverage
  type: boolean
- doc: '= number of synthesized bases per phi29 in each step (default: 10000)'
  id: step_size
  inputBinding:
    prefix: --stepSize
  type: boolean
- doc: '= normalized number of primers attached in each step (default: 0.5e-11)'
  id: alpha
  inputBinding:
    prefix: --alpha
  type: boolean
- doc: = number of primers attached per single strand of reference sequence in the
    first step. It can be any positive number. (overrides -A; alpha = attachNum /
    (input reference length * primerNo))
  id: attach_num
  inputBinding:
    prefix: --attachNum
  type: boolean
- doc: '= minimum length of output amplicons (default: 10)'
  id: read_length
  inputBinding:
    prefix: --readLength
  type: boolean
- doc: Input reference is amplified as a single strand sequence
  id: single
  inputBinding:
    prefix: --single
  type: boolean
