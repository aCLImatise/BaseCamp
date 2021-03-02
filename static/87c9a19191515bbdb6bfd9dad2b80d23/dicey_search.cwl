class: CommandLineTool
id: dicey_search.cwl
inputs:
- id: in_arg_genome_file
  doc: '[ --genome ] arg                   genome file'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_arg_primer_config
  doc: "[ --config ] arg (=\"./src/primer3_config/\")\nprimer3 config directory"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_output_file
  doc: '[ --outfile ] arg                  output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_kmer_size
  doc: '[ --kmer ] arg (=15)               k-mer size'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_arg_max_number
  doc: '[ --maxmatches ] arg (=10000)      max. number of matches per k-mer'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_max_neighborhood
  doc: '[ --maxNeighborhood ] arg (=10000) max. neighborhood size'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_arg_neighborhood_distance
  doc: '[ --distance ] arg (=1)            neighborhood distance'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_arg_prune_primer
  doc: '[ --pruneprimer ] arg              prune primer threshold'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_use_hamming_neighborhood
  doc: "[ --hamming ]                      use hamming neighborhood instead of\nedit\
    \ distance"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_min_primer
  doc: '[ --cutTemp ] arg (=45)            min. primer melting temperature'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_max_pcr
  doc: '[ --maxProdSize ] arg (=15000)     max. PCR Product size'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_cut_off_penalty
  doc: "(=-1)             max. penalty for products (-1 = keep\nall)"
  type: long?
  inputBinding:
    prefix: --cutoffPenalty
- id: in_penalty_tm_diff
  doc: "(=0.59999999999999998)\nmultiplication factor for deviation of\nprimer Tm\
    \ penalty"
  type: double?
  inputBinding:
    prefix: --penaltyTmDiff
- id: in_penalty_tm_mismatch
  doc: "(=0.40000000000000002)\nmultiplication factor for Tm pair\ndifference penalty"
  type: double?
  inputBinding:
    prefix: --penaltyTmMismatch
- id: in_penalty_length
  doc: "(=0.001)          multiplication factor for amplicon\nlength penalty"
  type: long?
  inputBinding:
    prefix: --penaltyLength
- id: in_ent_temp
  doc: "(=37)                   temperature for entropie and entalpie\ncalculation\
    \ in Celsius"
  type: long?
  inputBinding:
    prefix: --enttemp
- id: in_monovalent
  doc: (=50)                concentration of monovalent ions in
  type: long?
  inputBinding:
    prefix: --monovalent
- id: in_dna
  doc: (=50)                       concentration of annealing(!) Oligos in
  type: long?
  inputBinding:
    prefix: --dna
- id: in_mmol
  doc: --divalent arg (=1.5)                 concentration of divalent ions in mMol
  type: string
  inputBinding:
    position: 0
- id: in_nmol
  doc: --dntp arg (=0.59999999999999998)     the sum  of all dNTPs in mMol
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --outfile ] arg                  output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- dicey
- search
