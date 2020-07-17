version 1.0

task Hmmemit2 {
  input {
    Boolean? write_generated_sequences
    Boolean? generate_single_sequence
    String? emit_n_sequences
    String? save_sequences_file
    Boolean? quiet_suppress_verbose
    String? seed
    Boolean? options
    String hmm_emit
    String hmm_file
  }
  command <<<
    hmmemit2 \
      ~{hmm_emit} \
      ~{hmm_file} \
      ~{true="-a" false="" write_generated_sequences} \
      ~{true="-c" false="" generate_single_sequence} \
      ~{if defined(emit_n_sequences) then ("-n " +  '"' + emit_n_sequences + '"') else ""} \
      ~{if defined(save_sequences_file) then ("-o " +  '"' + save_sequences_file + '"') else ""} \
      ~{true="-q" false="" quiet_suppress_verbose} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    write_generated_sequences: ": write generated sequences as an alignment, not FASTA"
    generate_single_sequence: ": generate a single \"consensus\" sequence"
    emit_n_sequences: ": emit <n> sequences (default 10)"
    save_sequences_file: ": save sequences in file <f>"
    quiet_suppress_verbose: ": quiet - suppress verbose banner"
    seed: ": set random number seed to <n>"
    options: ""
    hmm_emit: ""
    hmm_file: ""
  }
}