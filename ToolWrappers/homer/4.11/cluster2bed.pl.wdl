version 1.0

task Cluster2bedpl {
  input {
    Boolean? res
    Boolean? min_p
    String? name
    File cluster_file
  }
  command <<<
    cluster2bed_pl \
      ~{cluster_file} \
      ~{if (res) then "-res" else ""} \
      ~{if (min_p) then "-minp" else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    res: "<#> (resolution used to create the file, default: auto detect)"
    min_p: "<#> (minimum % of regions in a cluster to include, default: 0.01)\\n(i.e. do not output clusters containing fewer than x percent of the data"
    name: "(track name for UCSC)"
    cluster_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}