version 1.0

task PickOtusCondensepy {
  input {
    String? seqs_otus
    String? non_unique_otu_matrix
    File? condensed_seqs_otus_file
  }
  command <<<
    pick_otus_condense_py \
      ~{if defined(seqs_otus) then ("--seqs_otus " +  '"' + seqs_otus + '"') else ""} \
      ~{if defined(non_unique_otu_matrix) then ("--non_unique_otu_matrix " +  '"' + non_unique_otu_matrix + '"') else ""} \
      ~{if defined(condensed_seqs_otus_file) then ("--condensed_seqs_otus_file " +  '"' + condensed_seqs_otus_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seqs_otus: "The list of OTU IDs and their associated sequence IDs."
    non_unique_otu_matrix: "The list of unique OTU IDs associated with the OTU IDs\\nthey replaced."
    condensed_seqs_otus_file: "The condensed set of OTU IDs and the matching\\nsequences. By default outputs to\\ncondensed_seqs_otus.txt"
  }
  output {
    File out_stdout = stdout()
  }
}