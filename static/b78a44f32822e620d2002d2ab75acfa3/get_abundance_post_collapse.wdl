version 1.0

task GetAbundancePostCollapse.py {
  input {
    String? collapseCollapsePrefix
    String? clusterClusterReport
  }
  command <<<
    get_abundance_post_collapse.py \
      ~{collapseCollapsePrefix} \
      ~{clusterClusterReport}
  >>>
}