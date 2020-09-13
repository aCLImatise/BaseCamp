version 1.0

task EufindtRNA {
  input {
    String? save_trnas_outfile
    Boolean? relaxed_mode_searched
    Boolean? strict_mode_discard
    Int? set_max_default
    Float? manually_set_cutoff
    Float? set_intermediate_score
    Boolean? save_trna_components
    Boolean? check_uppercase_alphabet
    Int? start_nucleotide_numbering
    Boolean? options
    File sequence_file
  }
  command <<<
    eufindtRNA \
      ~{sequence_file} \
      ~{if defined(save_trnas_outfile) then ("-o " +  '"' + save_trnas_outfile + '"') else ""} \
      ~{if (relaxed_mode_searched) then "-r" else ""} \
      ~{if (strict_mode_discard) then "-s" else ""} \
      ~{if defined(set_max_default) then ("-l " +  '"' + set_max_default + '"') else ""} \
      ~{if defined(manually_set_cutoff) then ("-X " +  '"' + manually_set_cutoff + '"') else ""} \
      ~{if defined(set_intermediate_score) then ("-I " +  '"' + set_intermediate_score + '"') else ""} \
      ~{if (save_trna_components) then "-D" else ""} \
      ~{if (check_uppercase_alphabet) then "-F" else ""} \
      ~{if defined(start_nucleotide_numbering) then ("-i " +  '"' + start_nucleotide_numbering + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    save_trnas_outfile: ": save tRNAs in <outfile>"
    relaxed_mode_searched: ": relaxed mode (no terminators searched for)"
    strict_mode_discard: ": strict mode (discard tRNAs with missing terminators)"
    set_max_default: ": set max intron+variable loop length (default=140)"
    manually_set_cutoff: ": manually set final score cutoff to <Score> (def=-31.8)"
    set_intermediate_score: ": set cutoff for intermediate score (def=-31.25)"
    save_trna_components: ": save tRNA score components (for Debugging)"
    check_uppercase_alphabet: ": don't check for uppercase or DNA alphabet"
    start_nucleotide_numbering: ": start nucleotide numbering at <integer> (def=1)"
    options: ""
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}