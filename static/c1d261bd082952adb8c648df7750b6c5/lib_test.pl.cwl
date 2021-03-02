class: CommandLineTool
id: lib_test.pl.cwl
inputs:
- id: in_genome
  doc: '[file]  FASTA format genome sequence'
  type: boolean?
  inputBinding:
    prefix: -genome
- id: in_std
  doc: '[file]  RepeatMasker .out file of the standard library'
  type: File?
  inputBinding:
    prefix: -std
- id: in_tst
  doc: '[file]  RepeatMasker .out file of the test library'
  type: File?
  inputBinding:
    prefix: -tst
- id: in_cat
  doc: '[string]        Testing TE category. Use one of LTR|nonLTR|LINE|SINE|TIR|MITE|Helitron|Total|Classified'
  type: boolean?
  inputBinding:
    prefix: -cat
- id: in_include_ns_defaule
  doc: '[0|1]   Include Ns in total length of the genome. Defaule: 0 (not include
    Ns).'
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_unknown
  doc: "[0|1]   Include unknown annotations to the testing category. This should be\
    \ used when\nthe test library has no classification and you assume they all belong\
    \ to the\ntarget category specified by -cat. Default: 0 (not include unknowns)"
  type: boolean?
  inputBinding:
    prefix: -unknown
- id: in_rand
  doc: '[int]   A randum number used to identify the current run. (default: generate
    automatically)'
  type: boolean?
  inputBinding:
    prefix: -rand
- id: in_threads
  doc: '[int]   Number of threads to run this program. Default: 4'
  type: boolean?
  inputBinding:
    prefix: -threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_std
  doc: '[file]  RepeatMasker .out file of the standard library'
  type: File?
  outputBinding:
    glob: $(inputs.in_std)
- id: out_tst
  doc: '[file]  RepeatMasker .out file of the test library'
  type: File?
  outputBinding:
    glob: $(inputs.in_tst)
hints: []
cwlVersion: v1.1
baseCommand:
- lib-test.pl
