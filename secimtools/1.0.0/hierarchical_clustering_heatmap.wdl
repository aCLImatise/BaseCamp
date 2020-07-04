version 1.0

task HierarchicalClusteringHeatmap.py {
  input {
    String? input_dataset_wide
    String? design
    String? uniqid
    Boolean? den_do_gram
    String? labels
    String? fig
    String? palette
    String? color
  }
  command <<<
    hierarchical_clustering_heatmap.py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(uniqid) then ("--uniqID " +  '"' + uniqid + '"') else ""} \
      ~{true="--dendogram" false="" den_do_gram} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(fig) then ("--fig " +  '"' + fig + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    uniqid: "Name of the column with unique dentifiers."
    den_do_gram: "Indicate wether you want to use a dendogram or not in the heatmap."
    labels: "Indicate wichlabels if any that you want to remove from the plot."
    fig: "Output path for heatmap file[PDF]"
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette"
  }
}