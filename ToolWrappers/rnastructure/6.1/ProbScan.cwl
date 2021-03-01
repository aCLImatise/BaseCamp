class: CommandLineTool
id: ProbScan.cwl
inputs:
- id: in_hairpin
  doc: Print probabilities for all possible hairpin loops.
  type: boolean?
  inputBinding:
    prefix: --hairpin
- id: in_bulge
  doc: Print probabilities for all possible bulge loops.
  type: boolean?
  inputBinding:
    prefix: --bulge
- id: in_dna
  doc: "Specify that the sequence is DNA, and DNA parameters are to be used.\nDefault\
    \ is to use RNA parameters."
  type: boolean?
  inputBinding:
    prefix: --DNA
- id: in_internal
  doc: Print probabilities for all possible internal loops.
  type: boolean?
  inputBinding:
    prefix: --internal
- id: in_sequence
  doc: "Provide RNA from sequence file. Partition function will be calculated (may\n\
    take a while); if you're going to query the same sequence repeatedly, you\ncould\
    \ save a lot of time by running from a partition function save file\nproduced\
    \ by the 'partition' program."
  type: boolean?
  inputBinding:
    prefix: --sequence
- id: in_helix
  doc: "Print probabilities for all possible helices with this number of base pair\n\
    stacks. To get single base pair stacks, use -e 1."
  type: boolean?
  inputBinding:
    prefix: --helix
- id: in_multi_branch
  doc: "Provide a file with multibranch loops. These multibranch loops'\nprobabilities\
    \ will be checked."
  type: boolean?
  inputBinding:
    prefix: --multibranch
- id: in_pairs
  doc: "Calculate probability for a user-specified loop. The loop must be provided\n\
    as a set of pairs of nucleotide indices, where the nucs in the pair are\ndelimited\
    \ by dashes and each pair is delimited by a comma; eg '-e 5-20'\nwill show the\
    \ probability of a hairpin loop closed by a pair between\nnucleotides 5 and 20,\
    \ and '-e 10-120,15-70,75-110' will give the\nprobability of a three-way junction\
    \ where the exiting helices are closed by\npairs at 10-120, 15-70, and 75-110.\n"
  type: boolean?
  inputBinding:
    prefix: --pairs
- id: in_input_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ProbScan
