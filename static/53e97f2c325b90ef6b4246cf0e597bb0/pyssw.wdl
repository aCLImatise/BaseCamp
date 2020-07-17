version 1.0

task Pyssw.py {
  input {
    String? s_libpath
    String? n_match
    String? n_mismatch
    String? n_open
    String? next
    Boolean? b_protien
    String? s_matrix
    Boolean? b_path
    String? n_thr
    Boolean? b_best
    Boolean? b_sam
    Boolean? b_header
    String target
    String query
  }
  command <<<
    pyssw.py \
      ~{target} \
      ~{query} \
      ~{if defined(s_libpath) then ("--sLibPath " +  '"' + s_libpath + '"') else ""} \
      ~{if defined(n_match) then ("--nMatch " +  '"' + n_match + '"') else ""} \
      ~{if defined(n_mismatch) then ("--nMismatch " +  '"' + n_mismatch + '"') else ""} \
      ~{if defined(n_open) then ("--nOpen " +  '"' + n_open + '"') else ""} \
      ~{if defined(next) then ("--nExt " +  '"' + next + '"') else ""} \
      ~{true="--bProtien" false="" b_protien} \
      ~{if defined(s_matrix) then ("--sMatrix " +  '"' + s_matrix + '"') else ""} \
      ~{true="--bPath" false="" b_path} \
      ~{if defined(n_thr) then ("--nThr " +  '"' + n_thr + '"') else ""} \
      ~{true="--bBest" false="" b_best} \
      ~{true="--bSam" false="" b_sam} \
      ~{true="--bHeader" false="" b_header}
  >>>
  parameter_meta {
    s_libpath: "path of libssw.so"
    n_match: "a positive integer as the score for a match in genome sequence alignment. [default: 2]"
    n_mismatch: "a positive integer as the score for a mismatch in genome sequence alignment. [default: 2]"
    n_open: "a positive integer as the penalty for the gap opening in genome sequence alignment. [default: 3]"
    next: "a positive integer as the penalty for the gap extension in genome sequence alignment. [default: 1]"
    b_protien: "Do protein sequence alignment. Without this option, the ssw_test will do genome sequence alignment. [default: False]"
    s_matrix: "a file for either Blosum or Pam weight matrix. [default: Blosum50]"
    b_path: "Return the alignment path. [default: False]"
    n_thr: "a positive integer. Only output the alignments with the Smith-Waterman score >= N."
    b_best: "The best alignment will be picked between the original read alignment and the reverse complement read alignment. [default: False]"
    b_sam: "Output in SAM format. [default: no header]"
    b_header: "If -s is used, include header in SAM output."
    target: "targe file"
    query: "query file"
  }
}