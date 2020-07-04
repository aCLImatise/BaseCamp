version 1.0

task Simulator.pyTranscriptome {
  input {
    String? ref_t
    String? ref_g
    String? exp
    String? model_prefix
    String? output_location_prefix
    String? number
    Int? max_len
    Int? min_len
    String? seed
    String? km_er_bias
    String? base_caller
    String? read_type
    String? strand_ness
    Boolean? no_model_ir
    Boolean? perfect
    String? num_threads
    Boolean? uracil
  }
  command <<<
    simulator.py transcriptome \
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
      ~{true="--no_model_ir" false="" no_model_ir} \
      ~{true="--perfect" false="" perfect} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{true="--uracil" false="" uracil}
  >>>
  parameter_meta {
    ref_t: "Input reference transcriptome"
    ref_g: "Input reference genome, required if intron retention simulatin is on"
    exp: "Expression profile in the specified format as described in README"
    model_prefix: "Location and prefix of error profiles generated from characterization step (Default = training)"
    output_location_prefix: "Output location and prefix for simulated reads (Default = simulated)"
    number: "Number of reads to be simulated (Default = 20000)"
    max_len: "The maximum length for simulated reads (Default = Infinity)"
    min_len: "The minimum length for simulated reads (Default = 50)"
    seed: "Manually seeds the pseudo-random number generator"
    km_er_bias: "Minimum homopolymer length to simulate homopolymer contraction and expansion events in"
    base_caller: "Simulate homopolymers with respect to chosen basecaller: albacore or guppy"
    read_type: "Simulate homopolymers with respect to chosen read type: dRNA, cDNA_1D or cDNA_1D2"
    strand_ness: "Percentage of antisense sequences. Overrides the value profiled in characterization stage. Should be between 0 and 1"
    no_model_ir: "Ignore simulating intron retention events"
    perfect: "Ignore profiles and simulate perfect reads"
    num_threads: "Number of threads for simulation (Default = 1)"
    uracil: "Converts the thymine (T) bases to uracil (U) in the output fasta format"
  }
}