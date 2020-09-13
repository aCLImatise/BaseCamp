version 1.0

task Dwgsim {
  input {
    Float? basecolorflow_error_first
    Float? basecolorflow_error_second
    Boolean? use_inner_distance
    Int? outer_distance_two
    Int? standard_deviation_distance
    Int? number_read_pairs
    Float? mean_coverage_disable
    Int? length_first_read
    Int? length_second_read
    Float? rate_of_mutations
    Float? frequency_given_mutation
    Float? fraction_mutations_indels
    Float? probability_indel_extended
    Int? minimum_length_indel
    Float? probability_random_dna
    Int? maximum_number_ns
    Int? generate_reads_illumina
    Int? generate_reads_default
    String? flow_order_ion
    Boolean? use_error_rate
    Boolean? haploid_mode
    Int? random_seed_uses
    Boolean? generate_mutations_file
    File? mutations_txt_file
    File? bedlike_file_set
    File? vcf_file_set
    File? bed_regions_cover
    String? read_prefix_prepend
    String? fixed_base_quality
    Float? standard_deviation_base
    String in_dot_ref_dot_fa
    String out_dot_prefix
  }
  command <<<
    dwgsim \
      ~{in_dot_ref_dot_fa} \
      ~{out_dot_prefix} \
      ~{if defined(basecolorflow_error_first) then ("-e " +  '"' + basecolorflow_error_first + '"') else ""} \
      ~{if defined(basecolorflow_error_second) then ("-E " +  '"' + basecolorflow_error_second + '"') else ""} \
      ~{if (use_inner_distance) then "-i" else ""} \
      ~{if defined(outer_distance_two) then ("-d " +  '"' + outer_distance_two + '"') else ""} \
      ~{if defined(standard_deviation_distance) then ("-s " +  '"' + standard_deviation_distance + '"') else ""} \
      ~{if defined(number_read_pairs) then ("-N " +  '"' + number_read_pairs + '"') else ""} \
      ~{if defined(mean_coverage_disable) then ("-C " +  '"' + mean_coverage_disable + '"') else ""} \
      ~{if defined(length_first_read) then ("-1 " +  '"' + length_first_read + '"') else ""} \
      ~{if defined(length_second_read) then ("-2 " +  '"' + length_second_read + '"') else ""} \
      ~{if defined(rate_of_mutations) then ("-r " +  '"' + rate_of_mutations + '"') else ""} \
      ~{if defined(frequency_given_mutation) then ("-F " +  '"' + frequency_given_mutation + '"') else ""} \
      ~{if defined(fraction_mutations_indels) then ("-R " +  '"' + fraction_mutations_indels + '"') else ""} \
      ~{if defined(probability_indel_extended) then ("-X " +  '"' + probability_indel_extended + '"') else ""} \
      ~{if defined(minimum_length_indel) then ("-I " +  '"' + minimum_length_indel + '"') else ""} \
      ~{if defined(probability_random_dna) then ("-y " +  '"' + probability_random_dna + '"') else ""} \
      ~{if defined(maximum_number_ns) then ("-n " +  '"' + maximum_number_ns + '"') else ""} \
      ~{if defined(generate_reads_illumina) then ("-c " +  '"' + generate_reads_illumina + '"') else ""} \
      ~{if defined(generate_reads_default) then ("-S " +  '"' + generate_reads_default + '"') else ""} \
      ~{if defined(flow_order_ion) then ("-f " +  '"' + flow_order_ion + '"') else ""} \
      ~{if (use_error_rate) then "-B" else ""} \
      ~{if (haploid_mode) then "-H" else ""} \
      ~{if defined(random_seed_uses) then ("-z " +  '"' + random_seed_uses + '"') else ""} \
      ~{if (generate_mutations_file) then "-M" else ""} \
      ~{if defined(mutations_txt_file) then ("-m " +  '"' + mutations_txt_file + '"') else ""} \
      ~{if defined(bedlike_file_set) then ("-b " +  '"' + bedlike_file_set + '"') else ""} \
      ~{if defined(vcf_file_set) then ("-v " +  '"' + vcf_file_set + '"') else ""} \
      ~{if defined(bed_regions_cover) then ("-x " +  '"' + bed_regions_cover + '"') else ""} \
      ~{if defined(read_prefix_prepend) then ("-P " +  '"' + read_prefix_prepend + '"') else ""} \
      ~{if defined(fixed_base_quality) then ("-q " +  '"' + fixed_base_quality + '"') else ""} \
      ~{if defined(standard_deviation_base) then ("-Q " +  '"' + standard_deviation_base + '"') else ""}
  >>>
  parameter_meta {
    basecolorflow_error_first: "per base/color/flow error rate of the first read [from 0.020 to 0.020 by 0.000]"
    basecolorflow_error_second: "per base/color/flow error rate of the second read [from 0.020 to 0.020 by 0.000]"
    use_inner_distance: "use the inner distance instead of the outer distance for pairs [False]"
    outer_distance_two: "outer distance between the two ends for pairs [500]"
    standard_deviation_distance: "standard deviation of the distance for pairs [50.000]"
    number_read_pairs: "number of read pairs (-1 to disable) [-1]"
    mean_coverage_disable: "mean coverage across available positions (-1 to disable) [100.00]"
    length_first_read: "length of the first read [70]"
    length_second_read: "length of the second read [70]"
    rate_of_mutations: "rate of mutations [0.0010]"
    frequency_given_mutation: "frequency of given mutation to simulate low fequency somatic mutations [0.5000]\\nNB: freqeuncy F refers to the first strand of mutation, therefore mutations\\non the second strand occour with a frequency of 1-F"
    fraction_mutations_indels: "fraction of mutations that are indels [0.10]"
    probability_indel_extended: "probability an indel is extended [0.30]"
    minimum_length_indel: "the minimum length indel [1]"
    probability_random_dna: "probability of a random DNA read [0.05]"
    maximum_number_ns: "maximum number of Ns allowed in a given read [0]"
    generate_reads_illumina: "generate reads for [0]:\\n0: Illumina\\n1: SOLiD\\n2: Ion Torrent"
    generate_reads_default: "generate reads [0]:\\n0: default (opposite strand for Illumina, same strand for SOLiD/Ion Torrent)\\n1: same strand (mate pair)\\n2: opposite strand (paired end)"
    flow_order_ion: "the flow order for Ion Torrent data [(null)]"
    use_error_rate: "use a per-base error rate for Ion Torrent data [False]"
    haploid_mode: "haploid mode [False]"
    random_seed_uses: "random seed (-1 uses the current time) [-1]"
    generate_mutations_file: "generate a mutations file only [False]"
    mutations_txt_file: "the mutations txt file to re-create [not using]"
    bedlike_file_set: "the bed-like file set of candidate mutations [(null)]"
    vcf_file_set: "the vcf file set of candidate mutations (use pl tag for strand) [(null)]"
    bed_regions_cover: "the bed of regions to cover [not using]"
    read_prefix_prepend: "a read prefix to prepend to each read name [not using]"
    fixed_base_quality: "a fixed base quality to apply (single character) [not using]"
    standard_deviation_base: "standard deviation of the base quality scores [2.00]"
    in_dot_ref_dot_fa: ""
    out_dot_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}