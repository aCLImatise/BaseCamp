version 1.0

task Simlord {
  input {
    File? read_reference
    Int? generate_reference
    File? save_reference
    Int? num_reads
    Float? coverage
    Int? chi_two_params_s
    Int? chi_two_params_n
    Int? max_passes
    Float? sqrt_params
    Float? norm_params
    Float? probability_threshold
    Float? prob_ins
    Float? prob_del
    Float? prob_sub
    Int? min_read_length
    Boolean? log_norm_read_length
    Int? fixed_read_length
    Array[File] sample_read_length_from_fast_q
    File? sample_read_length_from_text
    File? sam_output
    Boolean? no_sam
    Boolean? gzip
    Boolean? without_ns
    Boolean? uniform_chromosome_probability
    Boolean? old_read_names
    String output_prefix_dot_fast_q
  }
  command <<<
    simlord \
      ~{output_prefix_dot_fast_q} \
      ~{if defined(read_reference) then ("--read-reference " +  '"' + read_reference + '"') else ""} \
      ~{if defined(generate_reference) then ("--generate-reference " +  '"' + generate_reference + '"') else ""} \
      ~{if defined(save_reference) then ("--save-reference " +  '"' + save_reference + '"') else ""} \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(chi_two_params_s) then ("--chi2-params-s " +  '"' + chi_two_params_s + '"') else ""} \
      ~{if defined(chi_two_params_n) then ("--chi2-params-n " +  '"' + chi_two_params_n + '"') else ""} \
      ~{if defined(max_passes) then ("--max-passes " +  '"' + max_passes + '"') else ""} \
      ~{if defined(sqrt_params) then ("--sqrt-params " +  '"' + sqrt_params + '"') else ""} \
      ~{if defined(norm_params) then ("--norm-params " +  '"' + norm_params + '"') else ""} \
      ~{if defined(probability_threshold) then ("--probability-threshold " +  '"' + probability_threshold + '"') else ""} \
      ~{if defined(prob_ins) then ("--prob-ins " +  '"' + prob_ins + '"') else ""} \
      ~{if defined(prob_del) then ("--prob-del " +  '"' + prob_del + '"') else ""} \
      ~{if defined(prob_sub) then ("--prob-sub " +  '"' + prob_sub + '"') else ""} \
      ~{if defined(min_read_length) then ("--min-readlength " +  '"' + min_read_length + '"') else ""} \
      ~{if (log_norm_read_length) then "--lognorm-readlength" else ""} \
      ~{if defined(fixed_read_length) then ("--fixed-readlength " +  '"' + fixed_read_length + '"') else ""} \
      ~{if defined(sample_read_length_from_fast_q) then ("--sample-readlength-from-fastq " +  '"' + sample_read_length_from_fast_q + '"') else ""} \
      ~{if defined(sample_read_length_from_text) then ("--sample-readlength-from-text " +  '"' + sample_read_length_from_text + '"') else ""} \
      ~{if defined(sam_output) then ("--sam-output " +  '"' + sam_output + '"') else ""} \
      ~{if (no_sam) then "--no-sam" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (without_ns) then "--without-ns" else ""} \
      ~{if (uniform_chromosome_probability) then "--uniform-chromosome-probability" else ""} \
      ~{if (old_read_names) then "--old-read-names" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_reference: "Read a reference from PATH to sample reads from"
    generate_reference: "LENGTH, -gr GC LENGTH\\nGenerate a random reference with given GC-content and\\ngiven length"
    save_reference: "Save the random reference as fasta-file at given PATH.\\nBy default, save at output path with\\n'_reference.fasta' appended."
    num_reads: "Number of reads to simulate (1000)."
    coverage: "Desired read coverage."
    chi_two_params_s: "PAR PAR PAR PAR, -xs PAR PAR PAR PAR PAR\\nParameters for the curve determining the parameter\\nscale for the chi^2 distribution: m,b, z, c, a for\\n'm*x + b' if x <= z and 'c * x^-a' if x > z (default=\\n(0.01214, -5.12, 675, 48303.0732881,\\n1.4691051212330266))"
    chi_two_params_n: "PAR PAR, -xn PAR PAR PAR\\nParameters for the function determining the parameter\\nn for the chi^2 distribution: m, b, z for 'm*x + b' if\\nx < z and 'm*z + b' for x >=z (default=\\n(0.00189237136, 2.5394497, 5500))."
    max_passes: "Maximal number of passes for one molecule (default=\\n40)."
    sqrt_params: "PAR, -sq PAR PAR\\nParameters for the sqare root function for the quality\\nincrease: a, b for 'sqrt(x+a) - b' (default= (0.5,\\n0.2247))"
    norm_params: "PAR, -nd PAR PAR\\nParameters for normal distributed noise added to\\nquality increase sqare root function (default= (0,\\n0.2))"
    probability_threshold: "Upper bound for the modified total error probability\\n(default= 0.2)"
    prob_ins: "Probability for insertions for reads with one pass.\\n(default= 0.11)"
    prob_del: "Probability for deletions for reads with one pass.\\n(default= 0.04)"
    prob_sub: "Probability for substitutions for reads with one pass.\\n(default= 0.01)"
    min_read_length: "Minium read length (default= 50) for lognormal\\ndistribution"
    log_norm_read_length: "[PARAMETER [PARAMETER ...]], -ln [PARAMETER [PARAMETER ...]]\\nParameters for lognormal read length distribution:\\n(sigma, loc, scale), empty for defaults"
    fixed_read_length: "Fixed read length for all reads."
    sample_read_length_from_fast_q: "Sample read length from a fastq-file at PATH\\ncontaining reads."
    sample_read_length_from_text: "Sample read length from a text file (one length per\\nline)."
    sam_output: "Save the alignments in a sam-file at SAM_OUTPUT. By\\ndefault, use OUTPUT_PREFIX.sam."
    no_sam: "Do not calculate the alignment and write a sam file."
    gzip: "Compress the simulated reads using gzip and save them\\nat OUTPUT_PREFIX.fastq.gz"
    without_ns: "Skip regions containing Ns and sample reads only from\\nparts completly without Ns."
    uniform_chromosome_probability: "Sample chromosomes for reads equally distributed\\ninstead of weighted by their length. (Was default\\nbehaviour up to version 1.0.1)"
    old_read_names: "Use old long read names where all information is\\nencoded in one large string. New format is according\\nto PacBio convention m\\{\\}/\\{\\}/CCS with read\\ninformation following after a whitespace.\\n"
    output_prefix_dot_fast_q: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_save_reference = "${in_save_reference}"
  }
}