version 1.0

task ChimChe {
  input {
    String? multifasta_sequences_analyzed
    File? multifasta_sequences_indexed
    Int? size_substrings_default
    Int? gives_number_skip
    Int? specifies_smallest_overlap
    String? full_deflines_printed
    String? best_simple_best
  }
  command <<<
    chimChe \
      ~{if defined(multifasta_sequences_analyzed) then ("-q " +  '"' + multifasta_sequences_analyzed + '"') else ""} \
      ~{if defined(multifasta_sequences_indexed) then ("-d " +  '"' + multifasta_sequences_indexed + '"') else ""} \
      ~{if defined(size_substrings_default) then ("-k " +  '"' + size_substrings_default + '"') else ""} \
      ~{if defined(gives_number_skip) then ("-g " +  '"' + gives_number_skip + '"') else ""} \
      ~{if defined(specifies_smallest_overlap) then ("-m " +  '"' + specifies_smallest_overlap + '"') else ""} \
      ~{if defined(full_deflines_printed) then ("-f " +  '"' + full_deflines_printed + '"') else ""} \
      ~{if defined(best_simple_best) then ("-t " +  '"' + best_simple_best + '"') else ""}
  >>>
  parameter_meta {
    multifasta_sequences_analyzed: "multi-fasta sequences to be analyzed"
    multifasta_sequences_indexed: "multi-fasta sequences to be indexed (if missing, -q file used)"
    size_substrings_default: "the size of the substrings; <= 14, default 10"
    gives_number_skip: "gives the number of bp to skip between segmentation tests"
    specifies_smallest_overlap: "specifies smallest overlap to be used"
    full_deflines_printed: "full deflines to be printed"
    best_simple_best: "best simple, best left and best right to be trimmed to the same window, to reduce partial-sequence artifacts"
  }
  output {
    File out_stdout = stdout()
  }
}