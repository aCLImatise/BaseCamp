class: CommandLineTool
id: seq_gen.cwl
inputs:
- id: in__sequence_length
  doc: ': # = sequence length [default = 1000].'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_simulated_datasets_tree
  doc: ': # = simulated datasets per tree [default = 1].'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_number_partitions_trees
  doc: ': # = number of partitions (and trees) per sequence [default = 1].'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_branch_length_scaling
  doc: ': # = branch length scaling factor [default = 1.0].'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_total_tree_scale
  doc: ': # = total tree scale [default = use branch lengths].'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_use_sequence_alignment
  doc: ': # = use sequence k as ancestral (needs alignment) [default = random].'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_model_hky_f
  doc: ": MODEL = HKY, F84, GTR, JTT, WAG, PAM, BLOSUM, MTREV, CPREV45, MTART, LG,\
    \ GENERAL\nHKY, F84 & GTR are for nucleotides the rest are for amino acids"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_shape_alpha_gamma
  doc: ': # = shape (alpha) for gamma rate heterogeneity [default = none].'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_number_gamma_rate
  doc: ': # = number of gamma rate categories [default = continuous].'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_proportion_invariable_sites
  doc: ': # = proportion of invariable sites [default = 0.0].'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_rates_codon_position
  doc: ': #1 #2 #3 = rates for codon position heterogeneity [default = none].'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in__transitiontransversion_ratio
  doc: ': # = transition-transversion ratio [default = equal rate].'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_general_rate_matrix
  doc: ': #1 #2 #3 #4 #5 #6= general rate matrix [default = all 1.0].'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_c_g_t
  doc: ': #A #C #G #T = nucleotide frequencies [default = all equal].'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_seed_random_number
  doc: ': # = seed for random number generator [default = system generated].'
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_output_file_format
  doc: ": Output file format [default = PHYLIP]\np PHYLIP format\nr relaxed PHYLIP\
    \ format\nn NEXUS format\nf FASTA format"
  type: File?
  inputBinding:
    prefix: -o
- id: in_write_additional_information
  doc: ": Write additional information [default = none]\na Write ancestral sequences\
    \ for each node\nr Write rate for each site"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_name_text_file
  doc: ': NAME = a text file to insert after every dataset [default = none].'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in__quiet
  doc: ': Quiet'
  type: boolean?
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_format
  doc: ": Output file format [default = PHYLIP]\np PHYLIP format\nr relaxed PHYLIP\
    \ format\nn NEXUS format\nf FASTA format"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_format)
hints: []
cwlVersion: v1.1
baseCommand:
- seq-gen
