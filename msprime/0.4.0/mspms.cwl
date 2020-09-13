class: CommandLineTool
id: ../../../mspms.cwl
inputs:
- id: in_mutation_rate
  doc: Mutation rate theta=4*N0*mu
  type: long
  inputBinding:
    prefix: --mutation-rate
- id: in_trees
  doc: Print out trees in Newick format
  type: boolean
  inputBinding:
    prefix: --trees
- id: in_recombination
  doc: "num_loci, -r rho num_loci\nRecombination at rate rho=4*N0*r where r is the\
    \ rate\nof recombination between the ends of the region being\nsimulated; num_loci\
    \ is the number of sites between\nwhich recombination can occur"
  type: long
  inputBinding:
    prefix: --recombination
- id: in_structure
  doc: "Sample from populations with the specified deme\nstructure. The arguments\
    \ are of the form\n'num_populations n1 n2 ... [4N0m]', specifying the\nnumber\
    \ of populations, the sample configuration, and\noptionally, the migration rate\
    \ for a symmetric island\nmodel"
  type: string[]
  inputBinding:
    prefix: --structure
- id: in_migration_matrix_entry
  doc: "source rate, -m dest source rate\nSets an entry M[dest, source] in the migration\
    \ matrix\nto the specified rate. source and dest are (1-indexed)\npopulation IDs.\
    \ Multiple options can be specified."
  type: long
  inputBinding:
    prefix: --migration-matrix-entry
- id: in_migration_matrix
  doc: "Sets the migration matrix to the specified value. The\nentries are in the\
    \ order M[1,1], M[1, 2], ..., M[2,\n1],M[2, 2], ..., M[N, N], where N is the number\
    \ of\npopulations."
  type: string[]
  inputBinding:
    prefix: --migration-matrix
- id: in_migration_rate_change
  doc: "x, -eM t x\nSet the symmetric island model migration rate to x /\n(npop -\
    \ 1) at time t"
  type: long
  inputBinding:
    prefix: --migration-rate-change
- id: in_migration_matrix_entry_change
  doc: "dest source rate, -em time dest source rate\nSets an entry M[dest, source]\
    \ in the migration matrix\nto the specified rate at the specified time. source\n\
    and dest are (1-indexed) population IDs."
  type: long
  inputBinding:
    prefix: --migration-matrix-entry-change
- id: in_migration_matrix_change
  doc: "Sets the migration matrix to the specified value at\ntime t.The entries are\
    \ in the order M[1,1], M[1, 2],\n..., M[2, 1],M[2, 2], ..., M[N, N], where N is\
    \ the\nnumber of populations."
  type: string[]
  inputBinding:
    prefix: --migration-matrix-change
- id: in_growth_rate
  doc: Set the growth rate to alpha for all populations.
  type: string
  inputBinding:
    prefix: --growth-rate
- id: in_population_growth_rate
  doc: "alpha, -g population_id alpha\nSet the growth rate to alpha for a specific\n\
    population."
  type: string
  inputBinding:
    prefix: --population-growth-rate
- id: in_population_size
  doc: "size, -n population_id size\nSet the size of a specific population to size*N0."
  type: long
  inputBinding:
    prefix: --population-size
- id: in_growth_rate_change
  doc: "alpha, -eG t alpha\nSet the growth rate for all populations to alpha at\n\
    time t"
  type: string
  inputBinding:
    prefix: --growth-rate-change
- id: in_population_growth_rate_change
  doc: "population_id alpha, -eg t population_id alpha\nSet the growth rate for a\
    \ specific population to alpha\nat time t"
  type: string
  inputBinding:
    prefix: --population-growth-rate-change
- id: in_size_change
  doc: "x, -eN t x\nSet the population size for all populations to x * N0\nat time\
    \ t"
  type: long
  inputBinding:
    prefix: --size-change
- id: in_population_size_change
  doc: "population_id x, -en t population_id x\nSet the population size for a specific\
    \ population to x\n* N0 at time t"
  type: long
  inputBinding:
    prefix: --population-size-change
- id: in_population_split
  doc: "dest source, -ej t dest source\nMove all lineages in population dest to source\
    \ at time\nt. Forwards in time, this corresponds to a population\nsplit in which\
    \ lineages in source split into dest. All\nmigration rates for population source\
    \ are set to zero."
  type: string
  inputBinding:
    prefix: --population-split
- id: in_admixture
  doc: "population_id proportion, -es t population_id proportion\nSplit the specified\
    \ population into a new population,\nsuch that the specified proportion of lineages\
    \ remains\nin the population population_id. Forwards in time this\ncorresponds\
    \ to an admixture event. The new population\nhas ID num_populations + 1. Migration\
    \ rates to and\nfrom the new population are set to 0, and growth rate\nis 0 and\
    \ the population size for the new population is\nN0."
  type: long
  inputBinding:
    prefix: --admixture
- id: in_random_seeds
  doc: "x2 x3, -seeds x1 x2 x3\nRandom seeds (must be three integers)"
  type: long
  inputBinding:
    prefix: --random-seeds
- id: in_precision
  doc: Number of values after decimal place to print
  type: double
  inputBinding:
    prefix: --precision
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mspms
