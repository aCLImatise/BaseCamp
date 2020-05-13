class: CommandLineTool
id: seq_gen.cwl
inputs:
- id: l
  doc: ': # = sequence length [default = 1000].'
  type: boolean
  inputBinding:
    prefix: -l
- id: n
  doc: ': # = simulated datasets per tree [default = 1].'
  type: boolean
  inputBinding:
    prefix: -n
- id: p
  doc: ': # = number of partitions (and trees) per sequence [default = 1].'
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: ': # = branch length scaling factor [default = 1.0].'
  type: boolean
  inputBinding:
    prefix: -s
- id: d
  doc: ': # = total tree scale [default = use branch lengths].'
  type: boolean
  inputBinding:
    prefix: -d
- id: k
  doc: ': # = use sequence k as ancestral (needs alignment) [default = random].'
  type: boolean
  inputBinding:
    prefix: -k
- id: m
  doc: ': MODEL = HKY, F84, GTR, JTT, WAG, PAM, BLOSUM, MTREV, CPREV45, MTART, LG,
    GENERAL HKY, F84 & GTR are for nucleotides the rest are for amino acids'
  type: boolean
  inputBinding:
    prefix: -m
- id: a
  doc: ': # = shape (alpha) for gamma rate heterogeneity [default = none].'
  type: boolean
  inputBinding:
    prefix: -a
- id: g
  doc: ': # = number of gamma rate categories [default = continuous].'
  type: boolean
  inputBinding:
    prefix: -g
- id: i
  doc: ': # = proportion of invariable sites [default = 0.0].'
  type: boolean
  inputBinding:
    prefix: -i
- id: c
  doc: ': #1 #2 #3 = rates for codon position heterogeneity [default = none].'
  type: boolean
  inputBinding:
    prefix: -c
- id: t
  doc: ': # = transition-transversion ratio [default = equal rate].'
  type: boolean
  inputBinding:
    prefix: -t
- id: r
  doc: ': #1 #2 #3 #4 #5 #6= general rate matrix [default = all 1.0].'
  type: boolean
  inputBinding:
    prefix: -r
- id: f
  doc: ': #A #C #G #T = nucleotide frequencies [default = all equal].'
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: ': #1 .. #190 = general rate matrix [default = all 1.0].'
  type: boolean
  inputBinding:
    prefix: -r
- id: f
  doc: ': #1 .. #20 = amino acid frequencies e=equal [default = matrix freqs].'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- seq-gen
