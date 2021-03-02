version 1.0

task Ssucmemit {
  input {
    Int? _generate_sequences
    Boolean? write_generated_sequences_unaligned
    Boolean? write_generated_sequences_stockholm
    Boolean? generate_single_sequence
    Boolean? local_emit_locally
    Int? start_sequence_numbering
    Int? set_random_seed
    Boolean? devhelp
    Boolean? rna
    Boolean? dna
    Boolean? i_leaved
    File? t_file
    Int? exp
    Int? begin
    Int? end
    Boolean? options
    String cm_file
    File sequence_output_file
  }
  command <<<
    ssu_cmemit \
      ~{cm_file} \
      ~{sequence_output_file} \
      ~{if defined(_generate_sequences) then ("-n " +  '"' + _generate_sequences + '"') else ""} \
      ~{if (write_generated_sequences_unaligned) then "-u" else ""} \
      ~{if (write_generated_sequences_stockholm) then "-a" else ""} \
      ~{if (generate_single_sequence) then "-c" else ""} \
      ~{if (local_emit_locally) then "-l" else ""} \
      ~{if defined(start_sequence_numbering) then ("-i " +  '"' + start_sequence_numbering + '"') else ""} \
      ~{if defined(set_random_seed) then ("-s " +  '"' + set_random_seed + '"') else ""} \
      ~{if (devhelp) then "--devhelp" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (i_leaved) then "--ileaved" else ""} \
      ~{if defined(t_file) then ("--tfile " +  '"' + t_file + '"') else ""} \
      ~{if defined(exp) then ("--exp " +  '"' + exp + '"') else ""} \
      ~{if defined(begin) then ("--begin " +  '"' + begin + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _generate_sequences: ": generate <n> sequences  [10]  (n>0)"
    write_generated_sequences_unaligned: ": write generated sequences as unaligned FASTA  [default]"
    write_generated_sequences_stockholm: ": write generated sequences as a STOCKHOLM alignment"
    generate_single_sequence: ": generate a single \\\"consensus\\\" sequence only"
    local_emit_locally: ": local; emit from a locally configured model"
    start_sequence_numbering: ": start sequence numbering at <n>  [1]  (n>0)"
    set_random_seed: ": set random number generator seed to <n>  [0]  (n>=0)"
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
  output {
    File out_stdout = stdout()
    File out_sequence_output_file = "${in_sequence_output_file}"
  }
}