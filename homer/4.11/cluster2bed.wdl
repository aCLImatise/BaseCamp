version 1.0

task Cluster2bed.pl {
  input {
    Boolean? res
    Boolean? min_p
    String? name
    String cluster_file
  }
  command <<<
    cluster2bed.pl \
      ~{cluster_file} \
      ~{true="-res" false="" res} \
      ~{true="-minp" false="" min_p} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""}
  >>>
  parameter_meta {
    res: "<#> (resolution used to create the file, default: auto detect)"
    min_p: "<#> (minimum % of regions in a cluster to include, default: 0.01) (i.e. do not output clusters containing fewer than x percent of the data"
    name: "(track name for UCSC)"
    cluster_file: ""
  }
}