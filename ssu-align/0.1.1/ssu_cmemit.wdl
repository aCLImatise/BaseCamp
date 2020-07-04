version 1.0

task SsuCmemit {
  input {
    String? generate_n_sequences
    Boolean? write_generated_sequences_unaligned
    Boolean? write_generated_sequences_stockholm
    Boolean? generate_single_sequence
    Boolean? local_emit_locally
    String? start_sequence_numbering
    String? set_generator_seed
    Boolean? devhelp
    Boolean? rna
    Boolean? dna
    Boolean? i_leaved
    String? t_file
    String? exp
    String? begin
    String? end
    Boolean? options
    String cm_file
    String sequence_output_file
  }
  command <<<
    ssu-cmemit \
      ~{cm_file} \
      ~{sequence_output_file} \
      ~{if defined(generate_n_sequences) then ("-n " +  '"' + generate_n_sequences + '"') else ""} \
      ~{true="-u" false="" write_generated_sequences_unaligned} \
      ~{true="-a" false="" write_generated_sequences_stockholm} \
      ~{true="-c" false="" generate_single_sequence} \
      ~{true="-l" false="" local_emit_locally} \
      ~{if defined(start_sequence_numbering) then ("-i " +  '"' + start_sequence_numbering + '"') else ""} \
      ~{if defined(set_generator_seed) then ("-s " +  '"' + set_generator_seed + '"') else ""} \
      ~{true="--devhelp" false="" devhelp} \
      ~{true="--rna" false="" rna} \
      ~{true="--dna" false="" dna} \
      ~{true="--ileaved" false="" i_leaved} \
      ~{if defined(t_file) then ("--tfile " +  '"' + t_file + '"') else ""} \
      ~{if defined(exp) then ("--exp " +  '"' + exp + '"') else ""} \
      ~{if defined(begin) then ("--begin " +  '"' + begin + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    generate_n_sequences: ": generate <n> sequences  [10]  (n>0)"
    write_generated_sequences_unaligned: ": write generated sequences as unaligned FASTA  [default]"
    write_generated_sequences_stockholm: ": write generated sequences as a STOCKHOLM alignment"
    generate_single_sequence: ": generate a single \"consensus\" sequence only"
    local_emit_locally: ": local; emit from a locally configured model"
    start_sequence_numbering: ": start sequence numbering at <n>  [1]  (n>0)"
    set_generator_seed: ": set random number generator seed to <n>  [0]  (n>=0)"
    devhelp: ": show list of otherwise undocumented developer options"
    rna: ": output alignment as RNA sequence data  [default]"
    dna: ": output alignment as DNA (not RNA) sequence data"
    i_leaved: ": with -a, output alnment in interleaved Stockholm format"
    t_file: ": dump parsetrees to file <f>"
    exp: ": exponentiate CM probabilities by <x> before emitting  (x>0)"
    begin: ": truncate alignment, begin at match column <n>  (n>=1)"
    end: ": truncate alignment,   end at match column <n>  (n>=1)"
    options: ""
    cm_file: ""
    sequence_output_file: ""
  }
}