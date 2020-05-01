#!/usr/bin/env cwl-runner

baseCommand:
- lib-test.pl
class: CommandLineTool
cwlVersion: v1.0
id: lib-test.pl
inputs:
- doc: '[file]  FASTA format genome sequence'
  id: genome
  inputBinding:
    prefix: -genome
  type: boolean
- doc: '[file]  RepeatMasker .out file of the standard library'
  id: std
  inputBinding:
    prefix: -std
  type: boolean
- doc: '[file]  RepeatMasker .out file of the test library'
  id: tst
  inputBinding:
    prefix: -tst
  type: boolean
- doc: '[string]        Testing TE category. Use one of LTR|nonLTR|LINE|SINE|TIR|MITE|Helitron|Total|Classified'
  id: cat
  inputBinding:
    prefix: -cat
  type: boolean
- doc: '[0|1]   Include Ns in total length of the genome. Defaule: 0 (not include
    Ns).'
  id: n
  inputBinding:
    prefix: -N
  type: boolean
- doc: '[0|1]   Include unknown annotations to the testing category. This should be
    used when the test library has no classification and you assume they all belong
    to the target category specified by -cat. Default: 0 (not include unknowns)'
  id: unknown
  inputBinding:
    prefix: -unknown
  type: boolean
- doc: '[int]   A randum number used to identify the current run. (default: generate
    automatically)'
  id: rand
  inputBinding:
    prefix: -rand
  type: boolean
- doc: '[int]   Number of threads to run this program. Default: 4'
  id: threads
  inputBinding:
    prefix: -threads
  type: boolean
