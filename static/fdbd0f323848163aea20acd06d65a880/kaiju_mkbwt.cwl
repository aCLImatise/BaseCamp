class: CommandLineTool
id: kaiju_mkbwt.cwl
inputs:
- id: in_out_filename
  doc: "(string)\nName of output. Several files with different extensions are produced\n\
    (if not given, input file name is used).\nValue:  NULL (null)"
  type: boolean?
  inputBinding:
    prefix: -outfilename
- id: in_alphabet
  doc: "(string)\nAlphabet used. Must end with the sequence terminator. Instead of\
    \ alphabet\nyou can specify DNA, RNA or protein, in which case the alphabet is\
    \ ACGT,\nACGU, or ACDEFGHIKLMNPQRSTVWYX\nValue:  protein"
  type: boolean?
  inputBinding:
    prefix: -Alphabet
- id: in_n_threads
  doc: "(integer)\nNumber of threads\nValue:  2"
  type: boolean?
  inputBinding:
    prefix: -nThreads
- id: in_length
  doc: "(double)\nLength of concatenated sequence in millions (one decimal, round\
    \ up).\nUsed when reading from stdin. If file name is given, length is estimated\n\
    from file size and length needs not be specified.\nValue:  0.000000"
  type: boolean?
  inputBinding:
    prefix: -length
- id: in_checkpoint
  doc: "(integer)\nExponent for suffix array checkpoints. There is a checkpoint for\
    \ every\n2^e points. Value around 5 is a good compromise between speed and space.\n\
    Value:  5"
  type: boolean?
  inputBinding:
    prefix: -checkpoint
- id: in_case_sens
  doc: "The sequence is read case sensitive\nValue: OFF"
  type: boolean?
  inputBinding:
    prefix: -caseSens
- id: in_rev_comp
  doc: "Reverse complement sequence. Works only for DNA.\nValue: OFF"
  type: boolean?
  inputBinding:
    prefix: -revComp
- id: in_term
  doc: "(string)\nTerminating symbol (only used for debugging)\nValue:  *"
  type: boolean?
  inputBinding:
    prefix: -term
- id: in_rev_sort
  doc: "The termination symbols sorts as reverse sequences. This will make the\nBWT\
    \ more compressible.\nValue: OFF"
  type: boolean?
  inputBinding:
    prefix: -revsort
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kaiju:1.7.4--h8b12597_0
cwlVersion: v1.1
baseCommand:
- kaiju-mkbwt
