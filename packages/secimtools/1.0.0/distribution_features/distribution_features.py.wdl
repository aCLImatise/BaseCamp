version 1.0

task DistributionFeaturespy {
  input {
    String? f
    String? input_dataset_wide
    File? design
    String? id
    String? group
    String? figure
    String? palette
    String? color
  }
  command <<<
    distribution_features_py \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(figure) then ("--figure " +  '"' + figure + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  parameter_meta {
    f: "[-pal PALETTE] [-col COLOR]"
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with uniqueID."
    group: "Treatment group"
    figure: "Output figure name [pdf]."
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette\\n"
  }
  output {
    File out_stdout = stdout()
  }
}