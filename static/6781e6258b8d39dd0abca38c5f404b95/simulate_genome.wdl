version 1.0

task SimulateGenome.py {
  input {
    String? number_of_chromosomes
    String? mean_length_chromosomes
    String? gamma_shape_parameter
    String? lower_truncation_point
    String? upper_truncation_point
    String? relative_base_frequencies
    String? random_seed_none
    String output_fast_a
  }
  command <<<
    simulate_genome.py \
      ~{output_fast_a} \
      ~{if defined(number_of_chromosomes) then ("-n " +  '"' + number_of_chromosomes + '"') else ""} \
      ~{if defined(mean_length_chromosomes) then ("-m " +  '"' + mean_length_chromosomes + '"') else ""} \
      ~{if defined(gamma_shape_parameter) then ("-a " +  '"' + gamma_shape_parameter + '"') else ""} \
      ~{if defined(lower_truncation_point) then ("-l " +  '"' + lower_truncation_point + '"') else ""} \
      ~{if defined(upper_truncation_point) then ("-u " +  '"' + upper_truncation_point + '"') else ""} \
      ~{if defined(relative_base_frequencies) then ("-b " +  '"' + relative_base_frequencies + '"') else ""} \
      ~{if defined(random_seed_none) then ("-z " +  '"' + random_seed_none + '"') else ""}
  >>>
  parameter_meta {
    number_of_chromosomes: "Number of chromosomes (23)."
    mean_length_chromosomes: "Mean length of chromosomes (5000000)."
    gamma_shape_parameter: "Gamma shape parameter (1)."
    lower_truncation_point: "Lower truncation point (None)."
    upper_truncation_point: "Upper truncation point (None)."
    relative_base_frequencies: "Relative base frequencies in A,C,G,T order (1,1,1,1) or \"random\"."
    random_seed_none: "Random seed (None)."
    output_fast_a: "Output fasta (default: stdout)"
  }
}