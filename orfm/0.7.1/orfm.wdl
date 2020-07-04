version 1.0

task Orfm {
  input {
    Int? minimum_number_nucleotides
    File? output_nucleotide_sequences
    Int? ignore_sequence_reads
    String? codon_table_translation
    Boolean? print_codons_ends
    Boolean? only_print_orfs
    String? run_version_orfm
    Boolean? show_version_information
    String seq_file
  }
  command <<<
    orfm \
      ~{seq_file} \
      ~{if defined(minimum_number_nucleotides) then ("-m " +  '"' + minimum_number_nucleotides + '"') else ""} \
      ~{if defined(output_nucleotide_sequences) then ("-t " +  '"' + output_nucleotide_sequences + '"') else ""} \
      ~{if defined(ignore_sequence_reads) then ("-l " +  '"' + ignore_sequence_reads + '"') else ""} \
      ~{if defined(codon_table_translation) then ("-c " +  '"' + codon_table_translation + '"') else ""} \
      ~{true="-p" false="" print_codons_ends} \
      ~{true="-s" false="" only_print_orfs} \
      ~{if defined(run_version_orfm) then ("-r " +  '"' + run_version_orfm + '"') else ""} \
      ~{true="-v" false="" show_version_information}
  >>>
  parameter_meta {
    minimum_number_nucleotides: "minimum number of nucleotides (not amino acids) to call an ORF on [default: 96]"
    output_nucleotide_sequences: "output nucleotide sequences of transcripts to this path [default: none]"
    ignore_sequence_reads: "ignore the sequence of the read beyond this, useful when comparing reads from with different read lengths [default: none]"
    codon_table_translation: "codon table for translation (see  http://www.ncbi.nlm.nih.gov/Taxonomy/taxonomyhome.html/index.cgi?chapter=tgencodes for details) [default: 1]"
    print_codons_ends: "print the actual stop codons at sequence ends if encoded [default: do not]"
    only_print_orfs: "only print those ORFs in the same frame as a stop codon [default: off]"
    run_version_orfm: "do not run unless this version of OrfM is at least this version number (e.g. 0.7.1)"
    show_version_information: "show version information"
    seq_file: ""
  }
}