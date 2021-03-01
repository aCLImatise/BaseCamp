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
      ~{if (load_fmindex_memory) then "-M" else ""} \
      ~{if (check_rank) then "-r" else ""} \
      ~{if (print_bwt_stdout) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    load_fmindex_memory: "load the FM-index as a memory mapped file"
    check_rank: "check rank"
    print_bwt_stdout: "print the BWT to the stdout"
    idx_based_ot_bwt: ""
  }
  output {
    File out_stdout = stdout()
  }
}