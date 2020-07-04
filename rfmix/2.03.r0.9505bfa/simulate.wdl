version 1.0

task Simulate {
  input {
    Int? generations
    Boolean? make_r_ils
    Float? phasing_switch
    String? random_seed
  }
  command <<<
    simulate \
      ~{if defined(generations) then ("--generations " +  '"' + generations + '"') else ""} \
      ~{true="--make-rils" false="" make_r_ils} \
      ~{if defined(phasing_switch) then ("--phasing-switch " +  '"' + phasing_switch + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""}
  >>>
  parameter_meta {
    generations: "Number of generations to simulate random mating admixture"
    make_r_ils: "After first generation of random mating, make recombinant inbred lines by selfing"
    phasing_switch: "introduce phasing switches at this rate. verification data is not switched"
    random_seed: "Seed value for random number generation - integer value (maybe specified inhexadecimal by preceeding with 0x), or the string \"clock\" to seed with the current system time."
  }
}