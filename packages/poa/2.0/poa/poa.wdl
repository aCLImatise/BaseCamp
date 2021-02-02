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
    File? pir
    File? clustal
    File? po
    Boolean? preserve_seq_order
    String? print_matrix
    Boolean? best
    Boolean? run_verbose_mode
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
      ~{if (to_lower) then "-tolower" else ""} \
      ~{if (to_upper) then "-toupper" else ""} \
      ~{if (do_global) then "-do_global" else ""} \
      ~{if (do_progressive) then "-do_progressive" else ""} \
      ~{if defined(read_pair_scores) then ("-read_pairscores " +  '"' + read_pair_scores + '"') else ""} \
      ~{if (fuse_all) then "-fuse_all" else ""} \
      ~{if (hb) then "-hb" else ""} \
      ~{if defined(hbm_in) then ("-hbmin " +  '"' + hbm_in + '"') else ""} \
      ~{if defined(pir) then ("-pir " +  '"' + pir + '"') else ""} \
      ~{if defined(clustal) then ("-clustal " +  '"' + clustal + '"') else ""} \
      ~{if defined(po) then ("-po " +  '"' + po + '"') else ""} \
      ~{if (preserve_seq_order) then "-preserve_seqorder" else ""} \
      ~{if defined(print_matrix) then ("-printmatrix " +  '"' + print_matrix + '"') else ""} \
      ~{if (best) then "-best" else ""} \
      ~{if (run_verbose_mode) then "-v" else ""}
  >>>
  parameter_meta {
    read_fast_a: "Read in FASTA sequence file."
    read_msa: "Read in MSA alignment file."
    read_msa_two: "Read in second MSA file."
    subset: "Filter MSA to include list of seqs in file."
    subset_two: "Filter second MSA to include list of seqs in file."
    remove: "Filter MSA to exclude list of seqs in file."
    remove_two: "Filter second MSA to exclude list of seqs in file."
    read_msa_list: "Read an MSA from each filename listed in file."
    to_lower: "Force FASTA/MSA sequences to lowercase\\n(nucleotides in our matrix files)"
    to_upper: "Force FASTA/MSA sequences to UPPERCASE\\n(amino acids in our matrix files)"
    do_global: "Do global alignment."
    do_progressive: "Perform progressive alignment using a guide tree\\nbuilt by neighbor joining from a set of\\nsequence-sequence similarity scores."
    read_pair_scores: "Read tab-delimited file of similarity scores.\\n(If not provided, scores are constructed\\nusing pairwise sequence alignment.)"
    fuse_all: "Fuse identical letters on align rings."
    hb: "Perform heaviest bundling to generate consensi."
    hbm_in: "Include in heaviest bundle sequences with\\npercent ID (as a fraction) >= value."
    pir: "Write out MSA in PIR format."
    clustal: "Write out MSA in CLUSTAL format."
    po: "Write out MSA in PO format."
    preserve_seq_order: "Write out MSA with sequences in their input order."
    print_matrix: "Print score matrix to stdout."
    best: "Restrict MSA output to heaviest bundles (PIR only)."
    run_verbose_mode: "Run in verbose mode (e.g. output gap penalties)."
    matrix_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}