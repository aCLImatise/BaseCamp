version 1.0

task NcbipyTblTransfer {
  input {
    Boolean? oob_clip
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String? loglevel
    String ref_fast_a
    String ref_tbl
    String alt_fast_a
    String out_tbl
  }
  command <<<
    ncbi_py tbl_transfer \
      ~{ref_fast_a} \
      ~{ref_tbl} \
      ~{alt_fast_a} \
      ~{out_tbl} \
      ~{if (oob_clip) then "--oob_clip" else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    oob_clip: "Out of bounds feature behavior. False: drop all\\nfeatures that are completely or partly out of bounds\\nTrue: drop all features completely out of bounds but\\ntruncate any features that are partly out of bounds"
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure."
    loglevel: "Verboseness of output. [default: DEBUG]"
    ref_fast_a: "Input sequence of reference genome"
    ref_tbl: "Input reference annotations (NCBI TBL format)"
    alt_fast_a: "Input sequence of new genome"
    out_tbl: "Output file with transferred annotations"
  }
  output {
    File out_stdout = stdout()
  }
}