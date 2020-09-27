version 1.0

task Hmmemit2 {
  input {
    Boolean? write_generated_sequences
    Boolean? generate_single_sequence
    Int? emit_sequences_default
    File? save_sequences_file
    Boolean? quiet_suppress_verbose
    Int? seed
    Boolean? options
    String hmm_emit
    File hmm_file
  }
  command <<<
    hmmemit2 \
      ~{hmm_emit} \
      ~{hmm_file} \
      ~{if (write_generated_sequences) then "-a" else ""} \
      ~{if (generate_single_sequence) then "-c" else ""} \
      ~{if defined(emit_sequences_default) then ("-n " +  '"' + emit_sequences_default + '"') else ""} \
      ~{if defined(save_sequences_file) then ("-o " +  '"' + save_sequences_file + '"') else ""} \
      ~{if (quiet_suppress_verbose) then "-q" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    write_generated_sequences: ": write generated sequences as an alignment, not FASTA"
    generate_single_sequence: ": generate a single \\\"consensus\\\" sequence"
    emit_sequences_default: ": emit <n> sequences (default 10)"
    save_sequences_file: ": save sequences in file <f>"
    quiet_suppress_verbose: ": quiet - suppress verbose banner"
    seed: ": set random number seed to <n>"
    options: ""
    hmm_emit: ""
    hmm_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}