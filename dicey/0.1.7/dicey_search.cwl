class: CommandLineTool
id: ../../../dicey_search.cwl
inputs:
- id: arg_genome_file
  doc: '[ --genome ] arg                   genome file'
  type: boolean
  inputBinding:
    prefix: -g
- id: arg_primer_config
  doc: '[ --config ] arg (="./src/primer3_config/") primer3 config directory'
  type: boolean
  inputBinding:
    prefix: -i
- id: arg_output_file
  doc: '[ --outfile ] arg                  output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_kmer_size
  doc: '[ --kmer ] arg (=15)               k-mer size'
  type: boolean
  inputBinding:
    prefix: -k
- id: arg_max_number
  doc: '[ --maxmatches ] arg (=10000)      max. number of matches per k-mer'
  type: boolean
  inputBinding:
    prefix: -m
- id: arg_neighborhood_size
  doc: '[ --maxNeighborhood ] arg (=10000) max. neighborhood size'
  type: boolean
  inputBinding:
    prefix: -x
- id: arg_neighborhood_distance
  doc: '[ --distance ] arg (=1)            neighborhood distance'
  type: boolean
  inputBinding:
    prefix: -d
- id: arg_prune_primer
  doc: '[ --pruneprimer ] arg              prune primer threshold'
  type: boolean
  inputBinding:
    prefix: -q
- id: use_hamming_neighborhood
  doc: '[ --hamming ]                      use hamming neighborhood instead of  edit
    distance'
  type: boolean
  inputBinding:
    prefix: -n
- id: arg_min_temperature
  doc: '[ --cutTemp ] arg (=45)            min. primer melting temperature'
  type: boolean
  inputBinding:
    prefix: -c
- id: arg_max_pcr
  doc: '[ --maxProdSize ] arg (=15000)     max. PCR Product size'
  type: boolean
  inputBinding:
    prefix: -l
- id: cut_off_penalty
  doc: (=-1)             max. penalty for products (-1 = keep  all)
  type: string
  inputBinding:
    prefix: --cutoffPenalty
- id: penalty_tm_diff
  doc: (=0.59999999999999998) multiplication factor for deviation of  primer Tm penalty
  type: string
  inputBinding:
    prefix: --penaltyTmDiff
- id: penalty_tm_mismatch
  doc: (=0.40000000000000002) multiplication factor for Tm pair  difference penalty
  type: string
  inputBinding:
    prefix: --penaltyTmMismatch
- id: penalty_length
  doc: (=0.001)          multiplication factor for amplicon  length penalty
  type: string
  inputBinding:
    prefix: --penaltyLength
- id: ent_temp
  doc: (=37)                   temperature for entropie and entalpie  calculation
    in Celsius
  type: string
  inputBinding:
    prefix: --enttemp
- id: monovalent
  doc: (=50)                concentration of monovalent ions in  mMol
  type: string
  inputBinding:
    prefix: --monovalent
- id: divalent
  doc: (=1.5)                 concentration of divalent ions in mMol
  type: string
  inputBinding:
    prefix: --divalent
- id: dna
  doc: (=50)                       concentration of annealing(!) Oligos in nMol
  type: string
  inputBinding:
    prefix: --dna
- id: dntp
  doc: (=0.59999999999999998)     the sum  of all dNTPs in mMol
  type: string
  inputBinding:
    prefix: --dntp
- id: sequences_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dicey
- search
