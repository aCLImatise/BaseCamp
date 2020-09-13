version 1.0

task Pysswpy {
  input {
    File? s_libpath
    Int? n_match
    Int? n_mismatch
    Int? n_open
    Int? next
    Boolean? b_protien
    File? s_matrix
    Boolean? b_path
    Int? n_thr
    Boolean? b_best
    Boolean? b_sam
    Boolean? b_header
    String target
    String query
  }
  command <<<
    pyssw_py \
      ~{target} \
      ~{query} \
      ~{if defined(s_libpath) then ("--sLibPath " +  '"' + s_libpath + '"') else ""} \
      ~{if defined(n_match) then ("--nMatch " +  '"' + n_match + '"') else ""} \
      ~{if defined(n_mismatch) then ("--nMismatch " +  '"' + n_mismatch + '"') else ""} \
      ~{if defined(n_open) then ("--nOpen " +  '"' + n_open + '"') else ""} \
      ~{if defined(next) then ("--nExt " +  '"' + next + '"') else ""} \
      ~{if (b_protien) then "--bProtien" else ""} \
      ~{if defined(s_matrix) then ("--sMatrix " +  '"' + s_matrix + '"') else ""} \
      ~{if (b_path) then "--bPath" else ""} \
      ~{if defined(n_thr) then ("--nThr " +  '"' + n_thr + '"') else ""} \
      ~{if (b_best) then "--bBest" else ""} \
      ~{if (b_sam) then "--bSam" else ""} \
      ~{if (b_header) then "--bHeader" else ""}
  >>>
  parameter_meta {
    s_libpath: "path of libssw.so"
    n_match: "a positive integer as the score for a match in genome\\nsequence alignment. [default: 2]"
    n_mismatch: "a positive integer as the score for a mismatch in\\ngenome sequence alignment. [default: 2]"
    n_open: "a positive integer as the penalty for the gap opening\\nin genome sequence alignment. [default: 3]"
    next: "a positive integer as the penalty for the gap\\nextension in genome sequence alignment. [default: 1]"
    b_protien: "Do protein sequence alignment. Without this option,\\nthe ssw_test will do genome sequence alignment.\\n[default: False]"
    s_matrix: "a file for either Blosum or Pam weight matrix.\\n[default: Blosum50]"
    b_path: "Return the alignment path. [default: False]"
    n_thr: "a positive integer. Only output the alignments with\\nthe Smith-Waterman score >= N."
    b_best: "The best alignment will be picked between the original\\nread alignment and the reverse complement read\\nalignment. [default: False]"
    b_sam: "Output in SAM format. [default: no header]"
    b_header: "If -s is used, include header in SAM output."
    target: "targe file"
    query: "query file"
  }
  output {
    File out_stdout = stdout()
  }
}