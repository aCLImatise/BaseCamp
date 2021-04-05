version 1.0

task PoppunkMst {
  input {
    String? rank_fit
    File? previous_clustering
    File? previous_mst
    String? distance_pkl
    String? display_cluster
    String? prefix_output_required
    Boolean? no_plot
    Int? threads
    Boolean? gpu_graph
  }
  command <<<
    poppunk_mst \
      ~{if defined(rank_fit) then ("--rank-fit " +  '"' + rank_fit + '"') else ""} \
      ~{if defined(previous_clustering) then ("--previous-clustering " +  '"' + previous_clustering + '"') else ""} \
      ~{if defined(previous_mst) then ("--previous-mst " +  '"' + previous_mst + '"') else ""} \
      ~{if defined(distance_pkl) then ("--distance-pkl " +  '"' + distance_pkl + '"') else ""} \
      ~{if defined(display_cluster) then ("--display-cluster " +  '"' + display_cluster + '"') else ""} \
      ~{if defined(prefix_output_required) then ("--output " +  '"' + prefix_output_required + '"') else ""} \
      ~{if (no_plot) then "--no-plot" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (gpu_graph) then "--gpu-graph" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0"
  }
  parameter_meta {
    rank_fit: "Location of rank fit, a sparse matrix\\n(*_rank*_fit.npz)"
    previous_clustering: "CSV file with cluster definitions"
    previous_mst: "Graph tool file from which previous MST can be loaded"
    distance_pkl: "Input pickle from distances, which contains sample\\nnames"
    display_cluster: "Column of clustering CSV to use for plotting"
    prefix_output_required: "Prefix for output files (required)"
    no_plot: "Do not try and draw the MST"
    threads: "Number of threads to use [default = 1]"
    gpu_graph: "Use cugraph for the calculation"
  }
  output {
    File out_stdout = stdout()
  }
}