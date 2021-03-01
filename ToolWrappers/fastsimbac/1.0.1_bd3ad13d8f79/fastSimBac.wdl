version 1.0

task FastSimBac {
  input {
    String? debugging_messages
    Int? mutation_rate_generations
    Int? input_clonal_frame
    Int? burn_used_initialize
    Int? lambda_r_recombination
    Int? lambda_r_rate
    Boolean? print_local_tree
    File? tab_delimited_file
    File? tab_delimited_frequency
    String? assign_growth_rate
    Int? migrate_assign_elements
    String? m_assign_ijth
    Int? ma
    Int? size_pop_i
    String? alpha_used_appear
    String? alpha_assign_growth
    String? i_alpha_assign
    String? m_assign_rate
    String? i_mij_assign
    Int? ema
    Int? size_new_sizes
    Int? i_sizei_size
    Int? es
    String? ej
    String sample_size
    String region_in_base_pairs
  }
  command <<<
    fastSimBac \
      ~{sample_size} \
      ~{region_in_base_pairs} \
      ~{if defined(debugging_messages) then ("-s " +  '"' + debugging_messages + '"') else ""} \
      ~{if defined(mutation_rate_generations) then ("-i " +  '"' + mutation_rate_generations + '"') else ""} \
      ~{if defined(input_clonal_frame) then ("-C " +  '"' + input_clonal_frame + '"') else ""} \
      ~{if defined(burn_used_initialize) then ("-b " +  '"' + burn_used_initialize + '"') else ""} \
      ~{if defined(lambda_r_recombination) then ("-r " +  '"' + lambda_r_recombination + '"') else ""} \
      ~{if defined(lambda_r_rate) then ("-x " +  '"' + lambda_r_rate + '"') else ""} \
      ~{if (print_local_tree) then "-T" else ""} \
      ~{if defined(tab_delimited_file) then ("-R " +  '"' + tab_delimited_file + '"') else ""} \
      ~{if defined(tab_delimited_frequency) then ("-F " +  '"' + tab_delimited_frequency + '"') else ""} \
      ~{if defined(assign_growth_rate) then ("-G " +  '"' + assign_growth_rate + '"') else ""} \
      ~{if defined(migrate_assign_elements) then ("-I " +  '"' + migrate_assign_elements + '"') else ""} \
      ~{if defined(m_assign_ijth) then ("-m " +  '"' + m_assign_ijth + '"') else ""} \
      ~{if defined(ma) then ("-ma " +  '"' + ma + '"') else ""} \
      ~{if defined(size_pop_i) then ("-n " +  '"' + size_pop_i + '"') else ""} \
      ~{if defined(alpha_used_appear) then ("-g " +  '"' + alpha_used_appear + '"') else ""} \
      ~{if defined(alpha_assign_growth) then ("-eG " +  '"' + alpha_assign_growth + '"') else ""} \
      ~{if defined(i_alpha_assign) then ("-eg " +  '"' + i_alpha_assign + '"') else ""} \
      ~{if defined(m_assign_rate) then ("-eM " +  '"' + m_assign_rate + '"') else ""} \
      ~{if defined(i_mij_assign) then ("-em " +  '"' + i_mij_assign + '"') else ""} \
      ~{if defined(ema) then ("-ema " +  '"' + ema + '"') else ""} \
      ~{if defined(size_new_sizes) then ("-eN " +  '"' + size_new_sizes + '"') else ""} \
      ~{if defined(i_sizei_size) then ("-en " +  '"' + i_sizei_size + '"') else ""} \
      ~{if defined(es) then ("-es " +  '"' + es + '"') else ""} \
      ~{if defined(ej) then ("-ej " +  '"' + ej + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastsimbac:1.0.1_bd3ad13d8f79--h17a57d0_1"
  }
  parameter_meta {
    debugging_messages: "debugging messages"
    mutation_rate_generations: "(mutation rate per site per 2N generations)"
    input_clonal_frame: "(the input clonal frame to fix simulations on, sample names must be integers from 0 on)"
    burn_used_initialize: "(burn in: sequence length in base pairs to be used to initialize the recombination process)"
    lambda_r_recombination: "<lambda> (r = recombination (gene conversion) initiation rate per-individual, per-base pair, per-2N generations; lambda = mean length of recombination tract in base pairs)"
    lambda_r_rate: "<lambda2> (r2 = between-species recombination (gene conversion) initiation rate per-individual, per-base pair, per-2N generations; lambda2 = mean length of between-species recombination tract in base pairs)"
    print_local_tree: "(Print each local tree in Newick format to standard out)"
    tab_delimited_file: "(Tab delimited file where first two columns indicate range of base pair positions scaled to the unit interval and last column is ratio with respect to base line recombination rate)"
    tab_delimited_frequency: "[0|1] (Tab delimited frequency distribution file where first column indicate range of SNP allele frequencies from previous row to current row and last column is desired bin frequency. Second parameter is 1 if SNPs with derived allele freq > 1.0 should have alleles flipped, 0 otherwise)"
    assign_growth_rate: "(Assign growth rate alpha across populations where alpha=-log(Np/Nr) )"
    migrate_assign_elements: "<n1> <n2> .. <mig_rate> (Assign all elements of the migration matrix for n populations.  Values in matrix set to mig_rate/(n-1) )"
    m_assign_ijth: "<j> <m>  (Assign i,j-th element of migration matrix to m)"
    ma: "..<m_12>..<m_nn> (Assign values to all elements of migration matrix for n populations)"
    size_pop_i: "<size>   (Pop i has size set to size*N_0)"
    alpha_used_appear: "<alpha>  (If used must appear after -M option)"
    alpha_assign_growth: "<alpha>  (Assign growth rate for all pops at time t)"
    i_alpha_assign: "<i> <alpha>  (Assign growth rate alpha of pop i at time t)"
    m_assign_rate: "<m> (Assign migrate rate m for all elements of migration matrix at time t)"
    i_mij_assign: "<i> <j> <m_ij> (Assign migration rate for i,j-th element of migration matrix at time t)"
    ema: "<n> <m_11>..<m_12>..<m_nn> (Assign migration rates  within the migration matrix for n populations at time t)"
    size_new_sizes: "<size> (New pop sizes at time t for all pops where new sizes = size*N_0)"
    i_sizei_size: "<i> <size_i> (New pop size of pop i will be set to (size_i*N_0) at time t)"
    es: "<i> <p> (Split two populations.  At time t, a proportion p of chromosomes from pop i will migrate to a population i+1)"
    ej: "<i> <j> (Join two populations.  At time t all chromosomes migrate from pop i to pop j)"
    sample_size: ""
    region_in_base_pairs: ""
  }
  output {
    File out_stdout = stdout()
  }
}