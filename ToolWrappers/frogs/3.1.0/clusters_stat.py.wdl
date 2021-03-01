version 1.0

task ClustersStatpy {
  input {
    String? distance_method
    String? linkage_method
    Boolean? debug
    File? input_biom
    File? output_file
    File? log_file
  }
  command <<<
    clusters_stat_py \
      ~{if defined(distance_method) then ("--distance-method " +  '"' + distance_method + '"') else ""} \
      ~{if defined(linkage_method) then ("--linkage-method " +  '"' + linkage_method + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(input_biom) then ("--input-biom " +  '"' + input_biom + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    distance_method: "Used distance method for classify (see http://docs.sci\\npy.org/doc/scipy-0.14.0/reference/generated/generated/\\nscipy.spatial.distance.pdist.html#scipy.spatial.distan\\nce.pdist). [Default: braycurtis]"
    linkage_method: "Used linkage method for classify (see http://docs.scip\\ny.org/doc/scipy-0.14.0/reference/generated/scipy.clust\\ner.hierarchy.linkage.html). [Default: average]"
    debug: "Keep temporary files to debug program."
    input_biom: "The BIOM file to process."
    output_file: "The output report (format: HTML). [Default:\\nclusters_metrics.html]"
    log_file: "This output file will contain several information on\\nexecuted commands.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_log_file = "${in_log_file}"
  }
}