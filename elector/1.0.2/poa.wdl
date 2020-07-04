version 1.0

task Poa {
  input {
    File? read_fast_a
    File? read_msa
    File? read_msa_two
    File? subset
    File? subset_two
    File? remove
    File? remove_two
    File? read_msa_list
    Boolean? to_lower
    Boolean? to_upper
    Boolean? do_global
    Boolean? do_progressive
    File? read_pair_scores
    Boolean? fuse_all
    Boolean? hb
    String? hbm_in
    String matrix_file
  }
  command <<<
    poa \
      ~{matrix_file} \
      ~{if defined(read_fast_a) then ("-read_fasta " +  '"' + read_fast_a + '"') else ""} \
      ~{if defined(read_msa) then ("-read_msa " +  '"' + read_msa + '"') else ""} \
      ~{if defined(read_msa_two) then ("-read_msa2 " +  '"' + read_msa_two + '"') else ""} \
      ~{if defined(subset) then ("-subset " +  '"' + subset + '"') else ""} \
      ~{if defined(subset_two) then ("-subset2 " +  '"' + subset_two + '"') else ""} \
      ~{if defined(remove) then ("-remove " +  '"' + remove + '"') else ""} \
      ~{if defined(remove_two) then ("-remove2 " +  '"' + remove_two + '"') else ""} \
      ~{if defined(read_msa_list) then ("-read_msa_list " +  '"' + read_msa_list + '"') else ""} \
      ~{true="-tolower" false="" to_lower} \
      ~{true="-toupper" false="" to_upper} \
      ~{true="-do_global" false="" do_global} \
      ~{true="-do_progressive" false="" do_progressive} \
      ~{if defined(read_pair_scores) then ("-read_pairscores " +  '"' + read_pair_scores + '"') else ""} \
      ~{true="-fuse_all" false="" fuse_all} \
      ~{true="-hb" false="" hb} \
      ~{if defined(hbm_in) then ("-hbmin " +  '"' + hbm_in + '"') else ""}
  >>>
  parameter_meta {
    read_fast_a: "Read in FASTA sequence file."
    read_msa: "Read in MSA alignment file."
    read_msa_two: "Read in second MSA file. "
    subset: "Filter MSA to include list of seqs in file."
    subset_two: "Filter second MSA to include list of seqs in file."
    remove: "Filter MSA to exclude list of seqs in file."
    remove_two: "Filter second MSA to exclude list of seqs in file."
    read_msa_list: "Read an MSA from each filename listed in file."
    to_lower: "Force FASTA/MSA sequences to lowercase (nucleotides in our matrix files)"
    to_upper: "Force FASTA/MSA sequences to UPPERCASE (amino acids in our matrix files)"
    do_global: "Do global alignment."
    do_progressive: "Perform progressive alignment using a guide tree built by neighbor joining from a set of sequence-sequence similarity scores."
    read_pair_scores: "Read tab-delimited file of similarity scores. (If not provided, scores are constructed using pairwise sequence alignment.)"
    fuse_all: "Fuse identical letters on align rings."
    hb: "Perform heaviest bundling to generate consensi."
    hbm_in: "Include in heaviest bundle sequences with percent ID (as a fraction) >= value."
    matrix_file: ""
  }
}