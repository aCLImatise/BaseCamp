version 1.0

task EufindtRNA {
  input {
    String? save_trnas_outfile
    Boolean? relaxed_mode_terminators
    Boolean? strict_mode_discard
    Int? set_max_intronvariable
    Float? manually_set_cutoff
    Float? set_cutoff_
    Boolean? save_trna_components
    Boolean? check_uppercase_dna
    Int? start_nucleotide_numbering
    Boolean? options
    File sequence_file
  }
  command <<<
    eufindtRNA \
      ~{sequence_file} \
      ~{if defined(save_trnas_outfile) then ("-o " +  '"' + save_trnas_outfile + '"') else ""} \
      ~{if (relaxed_mode_terminators) then "-r" else ""} \
      ~{if (strict_mode_discard) then "-s" else ""} \
      ~{if defined(set_max_intronvariable) then ("-l " +  '"' + set_max_intronvariable + '"') else ""} \
      ~{if defined(manually_set_cutoff) then ("-X " +  '"' + manually_set_cutoff + '"') else ""} \
      ~{if defined(set_cutoff_) then ("-I " +  '"' + set_cutoff_ + '"') else ""} \
      ~{if (save_trna_components) then "-D" else ""} \
      ~{if (check_uppercase_dna) then "-F" else ""} \
      ~{if defined(start_nucleotide_numbering) then ("-i " +  '"' + start_nucleotide_numbering + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/trnascan-se:2.0.7--pl526h516909a_0"
  }
  parameter_meta {
    save_trnas_outfile: ": save tRNAs in <outfile>"
    relaxed_mode_terminators: ": relaxed mode (no terminators searched for)"
    strict_mode_discard: ": strict mode (discard tRNAs with missing terminators)"
    set_max_intronvariable: ": set max intron+variable loop length (default=140)"
    manually_set_cutoff: ": manually set final score cutoff to <Score> (def=-31.8)"
    set_cutoff_: ": set cutoff for intermediate score (def=-31.25)"
    save_trna_components: ": save tRNA score components (for Debugging)"
    check_uppercase_dna: ": don't check for uppercase or DNA alphabet"
    start_nucleotide_numbering: ": start nucleotide numbering at <integer> (def=1)"
    options: ""
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}