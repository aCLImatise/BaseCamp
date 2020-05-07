class: CommandLineTool
id: lib_test.pl.cwl
inputs:
- id: genome
  doc: '[file]  FASTA format genome sequence'
  type: boolean
  inputBinding:
    prefix: -genome
- id: std
  doc: '[file]  RepeatMasker .out file of the standard library'
  type: boolean
  inputBinding:
    prefix: -std
- id: tst
  doc: '[file]  RepeatMasker .out file of the test library'
  type: boolean
  inputBinding:
    prefix: -tst
- id: cat
  doc: '[string]        Testing TE category. Use one of LTR|nonLTR|LINE|SINE|TIR|MITE|Helitron|Total|Classified'
  type: boolean
  inputBinding:
    prefix: -cat
- id: n
  doc: '[0|1]   Include Ns in total length of the genome. Defaule: 0 (not include
    Ns).'
  type: boolean
  inputBinding:
    prefix: -N
- id: unknown
  doc: '[0|1]   Include unknown annotations to the testing category. This should be
    used when the test library has no classification and you assume they all belong
    to the target category specified by -cat. Default: 0 (not include unknowns)'
  type: boolean
  inputBinding:
    prefix: -unknown
- id: rand
  doc: '[int]   A randum number used to identify the current run. (default: generate
    automatically)'
  type: boolean
  inputBinding:
    prefix: -rand
- id: threads
  doc: '[int]   Number of threads to run this program. Default: 4'
  type: boolean
  inputBinding:
    prefix: -threads
outputs: []
cwlVersion: v1.1
baseCommand:
- lib-test.pl
