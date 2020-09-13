version 1.0

task Simulate {
  input {
    File? vcf
    File? sample_map
    File? genetic_map
    String? output_basename
    Float? growth_rate
    Int? maximum_size
    File? chromosome
    Int? generations
    Boolean? make_r_ils
    Float? phasing_switch
    Int? random_seed
  }
  command <<<
    simulate \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(sample_map) then ("--sample-map " +  '"' + sample_map + '"') else ""} \
      ~{if defined(genetic_map) then ("--genetic-map " +  '"' + genetic_map + '"') else ""} \
      ~{if defined(output_basename) then ("--output-basename " +  '"' + output_basename + '"') else ""} \
      ~{if defined(growth_rate) then ("--growth-rate " +  '"' + growth_rate + '"') else ""} \
      ~{if defined(maximum_size) then ("--maximum-size " +  '"' + maximum_size + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if defined(generations) then ("--generations " +  '"' + generations + '"') else ""} \
      ~{if (make_r_ils) then "--make-rils" else ""} \
      ~{if defined(phasing_switch) then ("--phasing-switch " +  '"' + phasing_switch + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""}
  >>>
  parameter_meta {
    vcf: "(required)\\nName of input VCF file"
    sample_map: "(required)\\nSample subpop mapping file - also selects which samples will be used for simulation"
    genetic_map: "(required)\\nGenetic map file (required)"
    output_basename: "(required)\\nBasename (prefix) for output files (required)"
    growth_rate: "Growth rate of population per generation (1 = no growth, 1.5 = 50% increase per generation, etc.)"
    maximum_size: "Stop growing population when it reaches specified size"
    chromosome: "(required)\\nChromosome to select from the VCF file"
    generations: "Number of generations to simulate random mating admixture"
    make_r_ils: "After first generation of random mating, make recombinant inbred lines by selfing"
    phasing_switch: "introduce phasing switches at this rate. verification data is not switched"
    random_seed: "Seed value for random number generation - integer value (maybe specified inhexadecimal by preceeding with 0x), or the string \\\"clock\\\" to seed with the current system time.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}