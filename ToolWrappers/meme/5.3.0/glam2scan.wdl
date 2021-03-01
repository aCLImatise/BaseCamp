version 1.0

task Glam2scan {
  input {
    Directory? output_directory_clobber
    Directory? output_directory_allow
    Boolean? output_text_only
    Boolean? number_alignments_report
    Boolean? examine_strands_forward
    Boolean? _deletion_pseudocount
    Boolean? _nodeletion_pseudocount
    Boolean? _insertion_pseudocount
    Boolean? _noinsertion_pseudocount
    Boolean? dirichlet_mixture_file
    Boolean? print_version_exit
    String alphabet
    Int my_motif_dot_glam_two
    String my_seqs_dot_fa
  }
  command <<<
    glam2scan \
      ~{alphabet} \
      ~{my_motif_dot_glam_two} \
      ~{my_seqs_dot_fa} \
      ~{if (output_directory_clobber) then "-o" else ""} \
      ~{if (output_directory_allow) then "-O" else ""} \
      ~{if (output_text_only) then "-t" else ""} \
      ~{if (number_alignments_report) then "-n" else ""} \
      ~{if (examine_strands_forward) then "-2" else ""} \
      ~{if (_deletion_pseudocount) then "-D" else ""} \
      ~{if (_nodeletion_pseudocount) then "-E" else ""} \
      ~{if (_insertion_pseudocount) then "-I" else ""} \
      ~{if (_noinsertion_pseudocount) then "-J" else ""} \
      ~{if (dirichlet_mixture_file) then "-d" else ""} \
      ~{if (print_version_exit) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    output_directory_clobber: ": output directory; will not clobber existing files"
    output_directory_allow: ": output directory (glam2scan_out); allow clobbering"
    output_text_only: ": output text only to stdout"
    number_alignments_report: ": number of alignments to report (25)"
    examine_strands_forward: ": examine both strands - forward and reverse complement"
    _deletion_pseudocount: ": deletion pseudocount (0.1)"
    _nodeletion_pseudocount: ": no-deletion pseudocount (2.0)"
    _insertion_pseudocount: ": insertion pseudocount (0.02)"
    _noinsertion_pseudocount: ": no-insertion pseudocount (1.0)"
    dirichlet_mixture_file: ": Dirichlet mixture file"
    print_version_exit: ": print version and exit (also accepts --version)"
    alphabet: ""
    my_motif_dot_glam_two: ""
    my_seqs_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_clobber = "${in_output_directory_clobber}"
    Directory out_output_directory_allow = "${in_output_directory_allow}"
  }
}