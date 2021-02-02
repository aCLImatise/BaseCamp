version 1.0

task MspSimulate {
  input {
    Int? length
    String? recombination_rate
    String? mutation_rate
    Int? effective_population_size
    String? random_seed
    Boolean? compress
  }
  command <<<
    msp simulate \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(recombination_rate) then ("--recombination-rate " +  '"' + recombination_rate + '"') else ""} \
      ~{if defined(mutation_rate) then ("--mutation-rate " +  '"' + mutation_rate + '"') else ""} \
      ~{if defined(effective_population_size) then ("--effective-population-size " +  '"' + effective_population_size + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if (compress) then "--compress" else ""}
  >>>
  parameter_meta {
    length: "The length of the simulated region in base pairs."
    recombination_rate: "The recombination rate per base per generation"
    mutation_rate: "The mutation rate per base per generation"
    effective_population_size: "The effective population size Ne"
    random_seed: "The random seed. If not specified one is chosen\\nrandomly"
    compress: "Enable HDF5's transparent zlib compression"
  }
  output {
    File out_stdout = stdout()
  }
}