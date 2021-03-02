version 1.0

task Fastadinucleotideshuffle {
  input {
    File? file_name_required
    String? added_shuffled_sequence
    Int? random_seed_default
    Int? make_shuffled_copies
    File? alphabet_file_use
  }
  command <<<
    fasta_dinucleotide_shuffle \
      ~{if defined(file_name_required) then ("-f " +  '"' + file_name_required + '"') else ""} \
      ~{if defined(added_shuffled_sequence) then ("-t " +  '"' + added_shuffled_sequence + '"') else ""} \
      ~{if defined(random_seed_default) then ("-s " +  '"' + random_seed_default + '"') else ""} \
      ~{if defined(make_shuffled_copies) then ("-c " +  '"' + make_shuffled_copies + '"') else ""} \
      ~{if defined(alphabet_file_use) then ("-a " +  '"' + alphabet_file_use + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_name_required: "file name (required)"
    added_shuffled_sequence: "added to shuffled sequence names"
    random_seed_default: "random seed; default: 1"
    make_shuffled_copies: "make <n> shuffled copies of each sequence; default: 1"
    alphabet_file_use: "alphabet file to use non-DNA alphabets"
  }
  output {
    File out_stdout = stdout()
  }
}