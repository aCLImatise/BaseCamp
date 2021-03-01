version 1.0

task Scramblesh {
  input {
    File? out_name
    File? cluster_file
    Int? n_cluster
    Int? in_del_score
    Int? mei_score
    Int? min_del_len
    Int? poly_a_frac
    Int? pct_align
    Int? poly_a_dist
    Directory? install_dir
    File? mei_refs
    File? ref
    Boolean? eval_me_is
    Boolean? eval_dels
  }
  command <<<
    scramble_sh \
      ~{if defined(out_name) then ("--out-name " +  '"' + out_name + '"') else ""} \
      ~{if defined(cluster_file) then ("--cluster-file " +  '"' + cluster_file + '"') else ""} \
      ~{if defined(n_cluster) then ("--nCluster " +  '"' + n_cluster + '"') else ""} \
      ~{if defined(in_del_score) then ("--indel-score " +  '"' + in_del_score + '"') else ""} \
      ~{if defined(mei_score) then ("--mei-score " +  '"' + mei_score + '"') else ""} \
      ~{if defined(min_del_len) then ("--min-del-len " +  '"' + min_del_len + '"') else ""} \
      ~{if defined(poly_a_frac) then ("--poly-a-frac " +  '"' + poly_a_frac + '"') else ""} \
      ~{if defined(pct_align) then ("--pct-align " +  '"' + pct_align + '"') else ""} \
      ~{if defined(poly_a_dist) then ("--poly-a-dist " +  '"' + poly_a_dist + '"') else ""} \
      ~{if defined(install_dir) then ("--install-dir " +  '"' + install_dir + '"') else ""} \
      ~{if defined(mei_refs) then ("--mei-refs " +  '"' + mei_refs + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if (eval_me_is) then "--eval-meis" else ""} \
      ~{if (eval_dels) then "--eval-dels" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scramble:1.0.1--h516909a_0"
  }
  parameter_meta {
    out_name: "full path to output file including prefix"
    cluster_file: "full path to cluster file"
    n_cluster: "min cluster size to analyze [default 5]"
    in_del_score: "min indel alignment score to call [default 80]"
    mei_score: "min mei alignment score to call [default 50]"
    min_del_len: "minimum deletion length to call [default 50]"
    poly_a_frac: "fraction of clipped length for calling polyA tail in MEIs [default 0.75]"
    pct_align: "percent alignment of clipped read for calling deletionss [default 90]"
    poly_a_dist: "how far from MEI to look for polyA tail [default 100]"
    install_dir: "resource directory [default ~/scramble/cluster_analysis/bin/]"
    mei_refs: "full path to MEI reference file (fasta format) [default ~/scramble/cluster_analysis/resources/MEI_consensus_seqs.fa]"
    ref: "reference file (fasta format) [default NULL]"
    eval_me_is: "evaluate meis"
    eval_dels: "evaluate deletions\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_name = "${in_out_name}"
  }
}