version 1.0

task HierarchicalClusteringHeatmappy {
  input {
    String? input_dataset_wide
    File? design
    String? uniqid
    Boolean? den_do_gram
    String? labels
    File? fig
    String? palette
    String? color
  }
  command <<<
    hierarchical_clustering_heatmap_py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(uniqid) then ("--uniqID " +  '"' + uniqid + '"') else ""} \
      ~{if (den_do_gram) then "--dendogram" else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(fig) then ("--fig " +  '"' + fig + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    uniqid: "Name of the column with unique dentifiers."
    den_do_gram: "Indicate wether you want to use a dendogram or not in\\nthe heatmap."
    labels: "Indicate wichlabels if any that you want to remove\\nfrom the plot."
    fig: "Output path for heatmap file[PDF]"
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette\\n"
  }
  output {
    File out_stdout = stdout()
    File out_fig = "${in_fig}"
  }
}