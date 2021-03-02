version 1.0

task Orfm {
  input {
    Int? minimum_number_acids
    File? output_nucleotide_sequences
    Int? ignore_sequence_read
    Int? codon_table_translation
    Boolean? print_actual_codons
    Boolean? only_print_orfs
    Int? run_version_is
    Boolean? show_version_information
    String seq_file
  }
  command <<<
    orfm \
      ~{seq_file} \
      ~{if defined(minimum_number_acids) then ("-m " +  '"' + minimum_number_acids + '"') else ""} \
      ~{if defined(output_nucleotide_sequences) then ("-t " +  '"' + output_nucleotide_sequences + '"') else ""} \
      ~{if defined(ignore_sequence_read) then ("-l " +  '"' + ignore_sequence_read + '"') else ""} \
      ~{if defined(codon_table_translation) then ("-c " +  '"' + codon_table_translation + '"') else ""} \
      ~{if (print_actual_codons) then "-p" else ""} \
      ~{if (only_print_orfs) then "-s" else ""} \
      ~{if defined(run_version_is) then ("-r " +  '"' + run_version_is + '"') else ""} \
      ~{if (show_version_information) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/orfm:1.3--hed695b0_0"
  }
  parameter_meta {
    minimum_number_acids: "minimum number of nucleotides (not amino acids) to call\\nan ORF on [default: 96]"
    output_nucleotide_sequences: "output nucleotide sequences of transcripts to this path\\n[default: none]"
    ignore_sequence_read: "ignore the sequence of the read beyond this, useful when\\ncomparing reads from with different read lengths\\n[default: none]"
    codon_table_translation: "codon table for translation (see\\nhttp://www.ncbi.nlm.nih.gov/Taxonomy/taxonomyhome.html/index.cgi?chapter=tgencodes\\nfor details) [default: 1]"
    print_actual_codons: "print the actual stop codons at sequence ends if encoded\\n[default: do not]"
    only_print_orfs: "only print those ORFs in the same frame as a stop codon\\n[default: off]"
    run_version_is: "do not run unless this version of OrfM is at least this version\\nnumber (e.g. 0.7.1)"
    show_version_information: "show version information"
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_nucleotide_sequences = "${in_output_nucleotide_sequences}"
  }
}