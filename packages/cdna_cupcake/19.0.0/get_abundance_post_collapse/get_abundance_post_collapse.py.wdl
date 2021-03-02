version 1.0

task GetAbundancePostCollapsepy {
  input {
    String collapse_prefix
    String cluster_report
  }
  command <<<
    get_abundance_post_collapse_py \
      ~{collapse_prefix} \
      ~{cluster_report}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
  }
  parameter_meta {
    collapse_prefix: "Collapse prefix (must have .group.txt)"
    cluster_report: "Cluster CSV report"
  }
  output {
    File out_stdout = stdout()
  }
}