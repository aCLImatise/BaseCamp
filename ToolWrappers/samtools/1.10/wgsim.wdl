version 1.0

task Wgsim {
  input {
    Float? base_error_rate
    Int? outer_distance_two
    Int? standard_deviation
    Int? number_read_pairs
    Int? length_first_read
    Int? length_second_read
    Float? rate_of_mutations
    Float? fraction_of_indels
    Float? probability_indel_extended
    Int? seed_random_generator
    Float? discard_fraction_ambiguous
    String in_dot_ref_dot_fa
    Int out_dot_read_one_dot_fq
    Int out_dot_read_two_dot_fq
  }
  command <<<
    wgsim \
      ~{in_dot_ref_dot_fa} \
      ~{out_dot_read_one_dot_fq} \
      ~{out_dot_read_two_dot_fq} \
      ~{if defined(base_error_rate) then ("-e " +  '"' + base_error_rate + '"') else ""} \
      ~{if defined(outer_distance_two) then ("-d " +  '"' + outer_distance_two + '"') else ""} \
      ~{if defined(standard_deviation) then ("-s " +  '"' + standard_deviation + '"') else ""} \
      ~{if defined(number_read_pairs) then ("-N " +  '"' + number_read_pairs + '"') else ""} \
      ~{if defined(length_first_read) then ("-1 " +  '"' + length_first_read + '"') else ""} \
      ~{if defined(length_second_read) then ("-2 " +  '"' + length_second_read + '"') else ""} \
      ~{if defined(rate_of_mutations) then ("-r " +  '"' + rate_of_mutations + '"') else ""} \
      ~{if defined(fraction_of_indels) then ("-R " +  '"' + fraction_of_indels + '"') else ""} \
      ~{if defined(probability_indel_extended) then ("-X " +  '"' + probability_indel_extended + '"') else ""} \
      ~{if defined(seed_random_generator) then ("-S " +  '"' + seed_random_generator + '"') else ""} \
      ~{if defined(discard_fraction_ambiguous) then ("-A " +  '"' + discard_fraction_ambiguous + '"') else ""}
  >>>
  parameter_meta {
    base_error_rate: "base error rate [0.000]"
    outer_distance_two: "outer distance between the two ends [500]"
    standard_deviation: "standard deviation [50]"
    number_read_pairs: "number of read pairs [1000000]"
    length_first_read: "length of the first read [70]"
    length_second_read: "length of the second read [70]"
    rate_of_mutations: "rate of mutations [0.0010]"
    fraction_of_indels: "fraction of indels [0.15]"
    probability_indel_extended: "probability an indel is extended [0.30]"
    seed_random_generator: "seed for random generator [0, use the current time]"
    discard_fraction_ambiguous: "discard if the fraction of ambiguous bases higher than FLOAT [0.05]"
    in_dot_ref_dot_fa: ""
    out_dot_read_one_dot_fq: ""
    out_dot_read_two_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}