version 1.0

task FermiChkbwt {
  input {
    Boolean? load_fmindex_memory
    Boolean? check_rank
    Boolean? print_bwt_stdout
    String idx_based_ot_bwt
  }
  command <<<
    fermi chkbwt \
      ~{idx_based_ot_bwt} \
      ~{true="-M" false="" load_fmindex_memory} \
      ~{true="-r" false="" check_rank} \
      ~{true="-p" false="" print_bwt_stdout}
  >>>
  parameter_meta {
    load_fmindex_memory: "load the FM-index as a memory mapped file"
    check_rank: "check rank"
    print_bwt_stdout: "print the BWT to the stdout"
    idx_based_ot_bwt: ""
  }
}