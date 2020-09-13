version 1.0

task SimulatorpyTranscriptome {
  input {
    String? ref_t
    String? ref_g
    String? exp
    String? model_prefix
    String? output_location_prefix
    Int? number
    Int? max_len
    Int? min_len
    Int? seed
    Int? km_er_bias
    String? base_caller
    String? read_type
    Int? strand_ness
    Boolean? no_model_ir
    Boolean? perfect
    Int? num_threads
    Boolean? uracil
  }
  command <<<
    simulator_py transcriptome \
      ~{if defined(ref_t) then ("--ref_t " +  '"' + ref_t + '"') else ""} \
      ~{if defined(ref_g) then ("--ref_g " +  '"' + ref_g + '"') else ""} \
      ~{if defined(exp) then ("--exp " +  '"' + exp + '"') else ""} \
      ~{if defined(model_prefix) then ("--model_prefix " +  '"' + model_prefix + '"') else ""} \
      ~{if defined(output_location_prefix) then ("--output " +  '"' + output_location_prefix + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(max_len) then ("--max_len " +  '"' + max_len + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(km_er_bias) then ("--KmerBias " +  '"' + km_er_bias + '"') else ""} \
      ~{if defined(base_caller) then ("--basecaller " +  '"' + base_caller + '"') else ""} \
      ~{if defined(read_type) then ("--read_type " +  '"' + read_type + '"') else ""} \
      ~{if defined(strand_ness) then ("--strandness " +  '"' + strand_ness + '"') else ""} \
      ~{if (no_model_ir) then "--no_model_ir" else ""} \
      ~{if (perfect) then "--perfect" else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if (uracil) then "--uracil" else ""}
  >>>
  parameter_meta {
    ref_t: "Input reference transcriptome"
    ref_g: "Input reference genome, required if intron retention\\nsimulatin is on"
    exp: "Expression profile in the specified format as\\ndescribed in README"
    model_prefix: "Location and prefix of error profiles generated from\\ncharacterization step (Default = training)"
    output_location_prefix: "Output location and prefix for simulated reads\\n(Default = simulated)"
    number: "Number of reads to be simulated (Default = 20000)"
    max_len: "The maximum length for simulated reads (Default =\\nInfinity)"
    min_len: "The minimum length for simulated reads (Default = 50)"
    seed: "Manually seeds the pseudo-random number generator"
    km_er_bias: "Minimum homopolymer length to simulate homopolymer\\ncontraction and expansion events in"
    base_caller: "Simulate homopolymers with respect to chosen\\nbasecaller: albacore or guppy"
    read_type: "Simulate homopolymers with respect to chosen read\\ntype: dRNA, cDNA_1D or cDNA_1D2"
    strand_ness: "Percentage of antisense sequences. Overrides the value\\nprofiled in characterization stage. Should be between\\n0 and 1"
    no_model_ir: "Ignore simulating intron retention events"
    perfect: "Ignore profiles and simulate perfect reads"
    num_threads: "Number of threads for simulation (Default = 1)"
    uracil: "Converts the thymine (T) bases to uracil (U) in the\\noutput fasta format\\n"
  }
  output {
    File out_stdout = stdout()
  }
}