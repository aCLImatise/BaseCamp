version 1.0

task Estscan {
  input {
    Boolean? all_one_sequence
    Float? only_results_have
    Int? deletion_penalty
    Int? insertion_penalty
    Int? only_results_longer
    File? score_matrices_file
    Int? min_value_matrix
    Int? how_compute_score
    Boolean? remove_deleted_nucleotides
    Boolean? report_header_information
    File? send_output_file
    Float? gc_select_correction
    Boolean? only_analyze_strand
    Int? skip_sequences_shorter
    Boolean? int_integers_used
    File? translate_protein_means
    Boolean? version_information
    Int? width_fasta_sequence
  }
  command <<<
    estscan \
      ~{if (all_one_sequence) then "-a" else ""} \
      ~{if defined(only_results_have) then ("-b " +  '"' + only_results_have + '"') else ""} \
      ~{if defined(deletion_penalty) then ("-d " +  '"' + deletion_penalty + '"') else ""} \
      ~{if defined(insertion_penalty) then ("-i " +  '"' + insertion_penalty + '"') else ""} \
      ~{if defined(only_results_longer) then ("-l " +  '"' + only_results_longer + '"') else ""} \
      ~{if defined(score_matrices_file) then ("-M " +  '"' + score_matrices_file + '"') else ""} \
      ~{if defined(min_value_matrix) then ("-m " +  '"' + min_value_matrix + '"') else ""} \
      ~{if defined(how_compute_score) then ("-N " +  '"' + how_compute_score + '"') else ""} \
      ~{if (remove_deleted_nucleotides) then "-n" else ""} \
      ~{if (report_header_information) then "-O" else ""} \
      ~{if defined(send_output_file) then ("-o " +  '"' + send_output_file + '"') else ""} \
      ~{if defined(gc_select_correction) then ("-p " +  '"' + gc_select_correction + '"') else ""} \
      ~{if (only_analyze_strand) then "-S" else ""} \
      ~{if defined(skip_sequences_shorter) then ("-s " +  '"' + skip_sequences_shorter + '"') else ""} \
      ~{if (int_integers_used) then "-T" else ""} \
      ~{if defined(translate_protein_means) then ("-t " +  '"' + translate_protein_means + '"') else ""} \
      ~{if (version_information) then "-v" else ""} \
      ~{if defined(width_fasta_sequence) then ("-w " +  '"' + width_fasta_sequence + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all_one_sequence: "All in one sequence output"
    only_results_have: "only results are shown, which have scores higher than this\\nfraction of the best score [1.000000]."
    deletion_penalty: "deletion penalty [-50]"
    insertion_penalty: "insertion penalty [-50]"
    only_results_longer: "only results longer than this length are shown [0]"
    score_matrices_file: "score matrices file ($ESTSCANDIR/Hs.smat)\\n[/usr/molbio/share/ESTScan/Hs.smat]"
    min_value_matrix: "min value in matrix [-100]"
    how_compute_score: "how to compute the score of N [0]"
    remove_deleted_nucleotides: "remove deleted nucleotides from the output"
    report_header_information: "report header information for best match only"
    send_output_file: "send output to file.  - means stdout.  If both -t and -o specify\\nstdout, only proteins will be written."
    gc_select_correction: "GC select correction for score matrices [4.000000]"
    only_analyze_strand: "only analyze positive strand"
    skip_sequences_shorter: "Skip sequences shorter than length [1]"
    int_integers_used: "<int*>   8 integers used as log-probabilities for transitions,\\nstart->5'UTR, start->CDS, start->3'UTR, 5'UTR->CDS,\\n5'UTR->end, CDS->3'UTR, CDS->end, 3'UTR->end\\n[-10, -10, -5, -80, -40, -80, -40, -20]"
    translate_protein_means: "Translate to protein.  - means stdout.\\nwill go to the file and the nucleotides will still go to stdout."
    version_information: "version information"
    width_fasta_sequence: "width of the FASTA sequence output [60]"
  }
  output {
    File out_stdout = stdout()
    File out_send_output_file = "${in_send_output_file}"
  }
}