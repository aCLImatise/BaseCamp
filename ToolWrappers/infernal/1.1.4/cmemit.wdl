version 1.0

task Cmemit {
  input {
    File? send_sequence_output
    Int? _generate_sequences
    Boolean? write_generated_sequences_unaligned
    Boolean? write_generated_sequences_alignment
    Boolean? generate_single_sequence
    Int? embed_emitted_sequences
    Boolean? local_emit_locally
    Boolean? u_five_p
    Boolean? u_three_p
    Int? a_five_p
    Int? a_three_p
    Int? seed
    Boolean? iid
    Boolean? rna
    Boolean? dna
    Int? idx
    String? out_format
    File? t_file
    String? exp
    Boolean? hmm_only
    Boolean? no_hmm_only
    Boolean? options
    String cm_file
  }
  command <<<
    cmemit \
      ~{cm_file} \
      ~{if defined(send_sequence_output) then ("-o " +  '"' + send_sequence_output + '"') else ""} \
      ~{if defined(_generate_sequences) then ("-N " +  '"' + _generate_sequences + '"') else ""} \
      ~{if (write_generated_sequences_unaligned) then "-u" else ""} \
      ~{if (write_generated_sequences_alignment) then "-a" else ""} \
      ~{if (generate_single_sequence) then "-c" else ""} \
      ~{if defined(embed_emitted_sequences) then ("-e " +  '"' + embed_emitted_sequences + '"') else ""} \
      ~{if (local_emit_locally) then "-l" else ""} \
      ~{if (u_five_p) then "--u5p" else ""} \
      ~{if (u_three_p) then "--u3p" else ""} \
      ~{if defined(a_five_p) then ("--a5p " +  '"' + a_five_p + '"') else ""} \
      ~{if defined(a_three_p) then ("--a3p " +  '"' + a_three_p + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (iid) then "--iid" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if defined(idx) then ("--idx " +  '"' + idx + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{if defined(t_file) then ("--tfile " +  '"' + t_file + '"') else ""} \
      ~{if defined(exp) then ("--exp " +  '"' + exp + '"') else ""} \
      ~{if (hmm_only) then "--hmmonly" else ""} \
      ~{if (no_hmm_only) then "--nohmmonly" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/infernal:1.1.4--h779adbc_0"
  }
  parameter_meta {
    send_sequence_output: ": send sequence output to file <f>, not stdout"
    _generate_sequences: ": generate <n> sequences  [10]"
    write_generated_sequences_unaligned: ": write generated sequences as unaligned FASTA [default]  [default]"
    write_generated_sequences_alignment: ": write generated sequences as an alignment"
    generate_single_sequence: ": generate a single \\\"consensus\\\" sequence only"
    embed_emitted_sequences: ": embed emitted sequences within larger random sequences of length <n>"
    local_emit_locally: ": local; emit from a locally configured model [default: global]"
    u_five_p: ": truncate unaligned sequences 5', choosing a random start posn"
    u_three_p: ": truncate unaligned sequences 3', choosing a random end   posn"
    a_five_p: ": truncate aln 5', start at match column <n> (use 0 for random posn)"
    a_three_p: ": truncate aln 3', end   at match column <n> (use 0 for random posn)"
    seed: ": set RNG seed to <n> [default: one-time arbitrary seed]  [0]"
    iid: ": with -e, generate larger sequences as 25% ACGU (iid)"
    rna: ": output as RNA sequence data  [default]"
    dna: ": output as DNA sequence data"
    idx: ": start sequence numbering at <n>  [1]"
    out_format: ": w/-a output alignment in format <s>  [Stockholm]"
    t_file: ": dump parsetrees to file <f>"
    exp: ": exponentiate CM probabilities by <x> before emitting"
    hmm_only: ": emit from filter HMM, not from CM"
    no_hmm_only: ": always emit from CM, even for models with 0 basepairs"
    options: ""
    cm_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_send_sequence_output = "${in_send_sequence_output}"
  }
}