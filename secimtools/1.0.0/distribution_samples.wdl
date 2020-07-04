version 1.0

task DistributionSamples.py {
  input {
    String? input_dataset_wide
    String? design
    String? id
    String? group
    String? order
    String? levels
    String? figure
    String? palette
    String? color
    File paths
  }
  command <<<
    distribution_samples.py \
      ~{paths} \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(levels) then ("--levels " +  '"' + levels + '"') else ""} \
      ~{if defined(figure) then ("--figure " +  '"' + figure + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with uniqueID."
    group: "Name of column in design file with Group/treatment information."
    order: "Name of the column with the runOrder"
    levels: "Different groups tosort by separeted by commas."
    figure: "Path for the distribution figure"
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette"
    paths: "and outputs"
  }
}