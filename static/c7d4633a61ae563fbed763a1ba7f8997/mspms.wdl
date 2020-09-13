version 1.0

task Mspms {
  input {
    Int? mutation_rate
    Boolean? trees
    Int? recombination
    Array[String] structure
    Int? migration_matrix_entry
    Array[String] migration_matrix
    Int? migration_rate_change
    Int? migration_matrix_entry_change
    Array[String] migration_matrix_change
    String? growth_rate
    String? population_growth_rate
    Int? population_size
    String? growth_rate_change
    String? population_growth_rate_change
    Int? size_change
    Int? population_size_change
    String? population_split
    Int? admixture
    Int? random_seeds
    Float? precision
    Boolean? v
  }
  command <<<
    mspms \
      ~{if defined(mutation_rate) then ("--mutation-rate " +  '"' + mutation_rate + '"') else ""} \
      ~{if (trees) then "--trees" else ""} \
      ~{if defined(recombination) then ("--recombination " +  '"' + recombination + '"') else ""} \
      ~{if defined(structure) then ("--structure " +  '"' + structure + '"') else ""} \
      ~{if defined(migration_matrix_entry) then ("--migration-matrix-entry " +  '"' + migration_matrix_entry + '"') else ""} \
      ~{if defined(migration_matrix) then ("--migration-matrix " +  '"' + migration_matrix + '"') else ""} \
      ~{if defined(migration_rate_change) then ("--migration-rate-change " +  '"' + migration_rate_change + '"') else ""} \
      ~{if defined(migration_matrix_entry_change) then ("--migration-matrix-entry-change " +  '"' + migration_matrix_entry_change + '"') else ""} \
      ~{if defined(migration_matrix_change) then ("--migration-matrix-change " +  '"' + migration_matrix_change + '"') else ""} \
      ~{if defined(growth_rate) then ("--growth-rate " +  '"' + growth_rate + '"') else ""} \
      ~{if defined(population_growth_rate) then ("--population-growth-rate " +  '"' + population_growth_rate + '"') else ""} \
      ~{if defined(population_size) then ("--population-size " +  '"' + population_size + '"') else ""} \
      ~{if defined(growth_rate_change) then ("--growth-rate-change " +  '"' + growth_rate_change + '"') else ""} \
      ~{if defined(population_growth_rate_change) then ("--population-growth-rate-change " +  '"' + population_growth_rate_change + '"') else ""} \
      ~{if defined(size_change) then ("--size-change " +  '"' + size_change + '"') else ""} \
      ~{if defined(population_size_change) then ("--population-size-change " +  '"' + population_size_change + '"') else ""} \
      ~{if defined(population_split) then ("--population-split " +  '"' + population_split + '"') else ""} \
      ~{if defined(admixture) then ("--admixture " +  '"' + admixture + '"') else ""} \
      ~{if defined(random_seeds) then ("--random-seeds " +  '"' + random_seeds + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    mutation_rate: "Mutation rate theta=4*N0*mu"
    trees: "Print out trees in Newick format"
    recombination: "num_loci, -r rho num_loci\\nRecombination at rate rho=4*N0*r where r is the rate\\nof recombination between the ends of the region being\\nsimulated; num_loci is the number of sites between\\nwhich recombination can occur"
    structure: "Sample from populations with the specified deme\\nstructure. The arguments are of the form\\n'num_populations n1 n2 ... [4N0m]', specifying the\\nnumber of populations, the sample configuration, and\\noptionally, the migration rate for a symmetric island\\nmodel"
    migration_matrix_entry: "source rate, -m dest source rate\\nSets an entry M[dest, source] in the migration matrix\\nto the specified rate. source and dest are (1-indexed)\\npopulation IDs. Multiple options can be specified."
    migration_matrix: "Sets the migration matrix to the specified value. The\\nentries are in the order M[1,1], M[1, 2], ..., M[2,\\n1],M[2, 2], ..., M[N, N], where N is the number of\\npopulations."
    migration_rate_change: "x, -eM t x\\nSet the symmetric island model migration rate to x /\\n(npop - 1) at time t"
    migration_matrix_entry_change: "dest source rate, -em time dest source rate\\nSets an entry M[dest, source] in the migration matrix\\nto the specified rate at the specified time. source\\nand dest are (1-indexed) population IDs."
    migration_matrix_change: "Sets the migration matrix to the specified value at\\ntime t.The entries are in the order M[1,1], M[1, 2],\\n..., M[2, 1],M[2, 2], ..., M[N, N], where N is the\\nnumber of populations."
    growth_rate: "Set the growth rate to alpha for all populations."
    population_growth_rate: "alpha, -g population_id alpha\\nSet the growth rate to alpha for a specific\\npopulation."
    population_size: "size, -n population_id size\\nSet the size of a specific population to size*N0."
    growth_rate_change: "alpha, -eG t alpha\\nSet the growth rate for all populations to alpha at\\ntime t"
    population_growth_rate_change: "population_id alpha, -eg t population_id alpha\\nSet the growth rate for a specific population to alpha\\nat time t"
    size_change: "x, -eN t x\\nSet the population size for all populations to x * N0\\nat time t"
    population_size_change: "population_id x, -en t population_id x\\nSet the population size for a specific population to x\\n* N0 at time t"
    population_split: "dest source, -ej t dest source\\nMove all lineages in population dest to source at time\\nt. Forwards in time, this corresponds to a population\\nsplit in which lineages in source split into dest. All\\nmigration rates for population source are set to zero."
    admixture: "population_id proportion, -es t population_id proportion\\nSplit the specified population into a new population,\\nsuch that the specified proportion of lineages remains\\nin the population population_id. Forwards in time this\\ncorresponds to an admixture event. The new population\\nhas ID num_populations + 1. Migration rates to and\\nfrom the new population are set to 0, and growth rate\\nis 0 and the population size for the new population is\\nN0."
    random_seeds: "x2 x3, -seeds x1 x2 x3\\nRandom seeds (must be three integers)"
    precision: "Number of values after decimal place to print"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}