version 1.0

task FermiRopebwt {
  input {
    String? algorithm_bpr_bcr
    Int? max_number_runs
    Int? max_number_children
    File? output_file
    File? temporary_sequence_file
    Int? verbose_level_bcr
    Boolean? binary_output_runs
    Boolean? enable_threading_bcr
    Boolean? skip_forward_strand
    Boolean? skip_reverse_strand
    Boolean? cut_ambiguous_bases
    Boolean? suppress_end_trimming
    Boolean? print_tree_stdout
    String rope_bwt
    String in_dot_fq_do_tgz
  }
  command <<<
    fermi ropebwt \
      ~{rope_bwt} \
      ~{in_dot_fq_do_tgz} \
      ~{if defined(algorithm_bpr_bcr) then ("-a " +  '"' + algorithm_bpr_bcr + '"') else ""} \
      ~{if defined(max_number_runs) then ("-r " +  '"' + max_number_runs + '"') else ""} \
      ~{if defined(max_number_children) then ("-n " +  '"' + max_number_children + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(temporary_sequence_file) then ("-f " +  '"' + temporary_sequence_file + '"') else ""} \
      ~{if defined(verbose_level_bcr) then ("-v " +  '"' + verbose_level_bcr + '"') else ""} \
      ~{if (binary_output_runs) then "-b" else ""} \
      ~{if (enable_threading_bcr) then "-t" else ""} \
      ~{if (skip_forward_strand) then "-F" else ""} \
      ~{if (skip_reverse_strand) then "-R" else ""} \
      ~{if (cut_ambiguous_bases) then "-N" else ""} \
      ~{if (suppress_end_trimming) then "-O" else ""} \
      ~{if (print_tree_stdout) then "-T" else ""}
  >>>
  parameter_meta {
    algorithm_bpr_bcr: "algorithm: bpr or bcr [bpr]"
    max_number_runs: "max number of runs in leaves (bpr only) [512]"
    max_number_children: "max number children per internal node (bpr only) [64]"
    output_file: "output file [stdout]"
    temporary_sequence_file: "temporary sequence file name (bcr only) [null]"
    verbose_level_bcr: "verbose level (bcr only) [2]"
    binary_output_runs: "binary output (5+3 runs starting after 4 bytes)"
    enable_threading_bcr: "enable threading (bcr only)"
    skip_forward_strand: "skip forward strand"
    skip_reverse_strand: "skip reverse strand"
    cut_ambiguous_bases: "cut at ambiguous bases"
    suppress_end_trimming: "suppress end trimming when forward==reverse"
    print_tree_stdout: "print the tree stdout (bpr only)"
    rope_bwt: ""
    in_dot_fq_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}