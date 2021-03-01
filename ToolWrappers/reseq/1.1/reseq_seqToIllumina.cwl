class: CommandLineTool
id: reseq_seqToIllumina.cwl
inputs:
- id: in_arg_number_threads
  doc: '[ --threads ] arg (=0)      Number of threads used (0=auto)'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_verbosity
  doc: "(=4)           Sets the level of verbosity (4=everything,\n0=nothing)"
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_error_mutli_plier
  doc: "(=1)     Divides the original probability of correct\nbase calls(no substitution\
    \ error) by this\nvalue and renormalizes"
  type: long?
  inputBinding:
    prefix: --errorMutliplier
- id: in_arg_input_file
  doc: "[ --input ] arg             Input file (fasta format, gz and bz2\nsupported)\
    \ [stdin]"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_ipf_iterations
  doc: "(=200)     Maximum number of iterations for iterative\nproportional fitting"
  type: long?
  inputBinding:
    prefix: --ipfIterations
- id: in_ipf_precision
  doc: "(=5)        Iterative proportional fitting procedure stops\nafter reaching\
    \ this precision (%)"
  type: long?
  inputBinding:
    prefix: --ipfPrecision
- id: in_no_indel_errors
  doc: Simulate reads without InDel errors
  type: boolean?
  inputBinding:
    prefix: --noInDelErrors
- id: in_no_substitution_errors
  doc: Simulate reads without substitution errors
  type: boolean?
  inputBinding:
    prefix: --noSubstitutionErrors
- id: in_arg_output_file
  doc: "[ --output ] arg            Output file (fastq format, gz and bz2\nsupported)\
    \ [stdout]"
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_loads_last
  doc: "[ --probabilitiesIn ] arg   Loads last estimated probabilities and\ncontinues\
    \ from there if precision is not met\n[<statsIn>.ipf]"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_stores_probabilities
  doc: "[ --probabilitiesOut ] arg  Stores the probabilities estimated by\niterative\
    \ proportional fitting\n[<probabilitiesIn>]"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_seed
  doc: "Seed used for simulation, if none is given\nrandom seed will be used"
  type: string?
  inputBinding:
    prefix: --seed
- id: in_arg_profile_file
  doc: "[ --statsIn ] arg           Profile file that contains the statistics used\n\
    for simulation\n"
  type: boolean?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: "[ --output ] arg            Output file (fastq format, gz and bz2\nsupported)\
    \ [stdout]"
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/reseq:1.1--py38h56fca86_0
cwlVersion: v1.1
baseCommand:
- reseq
- seqToIllumina
