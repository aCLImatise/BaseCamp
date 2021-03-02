version 1.0

task Anvimatrixtonewick {
  input {
    File? output_file
    File? items_order_file
    Boolean? transpose
    String? distance
    String? linkage
    String view_data
    String dendrogram
  }
  command <<<
    anvi_matrix_to_newick \
      ~{view_data} \
      ~{dendrogram} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(items_order_file) then ("--items-order-file " +  '"' + items_order_file + '"') else ""} \
      ~{if (transpose) then "--transpose" else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(linkage) then ("--linkage " +  '"' + linkage + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    output_file: "File path to store results. (default: None)"
    items_order_file: "PATH\\nIn addition to a newick formatted output file, you can\\nask anvi'o to report the order of items in the\\nresulting tree in a separate file. The content of this\\nfile will be a single-column item names the way they\\nare ordered in the output newick dendrogram. (default:\\nNone)"
    transpose: "Transpose the input matrix file before clustering.\\n(default: False)"
    distance: "The distance metric for the hierarchical clustering.\\nThe default distance metric is 'euclidean'. You can\\nfind the full list of distance metrics either by\\nmaking a mistake (such as entering a non-existent\\ndistance metric and making anvi'o upset), or by taking\\na look at the help menu of the\\nhierarchy.distance.pdist function in the scipy.cluster\\nmodule."
    linkage: "The linkage method for the hierarchical clustering.\\nThe default linkage method is 'ward', because that is\\nthe best one. It really is. We talked to a lot of\\npeople and they were all like 'this is the best one\\navailable' and it is just all out there. Honestly it\\nis so good that we will build a wall around it and\\nmake other linkage methods pay for it. But if you want\\nto see a full list of available ones you can check the\\nhierarcy.linkage function in the scipy.cluster module.\\nUp to you really. But then you can't use ward anymore,\\nand you would have to leave anvi'o right now."
    view_data: "🍕 Can provide: "
    dendrogram: "🍺 More on `anvi-matrix-to-newick`:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_items_order_file = "${in_items_order_file}"
  }
}