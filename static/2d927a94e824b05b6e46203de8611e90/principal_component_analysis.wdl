version 1.0

task PrincipalComponentAnalysis.py {
  input {
    String? input_dataset_wide
    String? design
    String? id
    String? group
    String? levels
    String? load_out
    String? score_out
    String? summary_out
    String? figure
    String? palette
    String? color
  }
  command <<<
    principal_component_analysis.py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(levels) then ("--levels " +  '"' + levels + '"') else ""} \
      ~{if defined(load_out) then ("--load_out " +  '"' + load_out + '"') else ""} \
      ~{if defined(score_out) then ("--score_out " +  '"' + score_out + '"') else ""} \
      ~{if defined(summary_out) then ("--summary_out " +  '"' + summary_out + '"') else ""} \
      ~{if defined(figure) then ("--figure " +  '"' + figure + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers."
    group: "Name of the column with groups."
    levels: "Different groups to sort by separeted by commas."
    load_out: "Name of output file to store loadings. TSV format."
    score_out: "Name of output file to store scores. TSV format."
    summary_out: "Name of output file to store summaries of the components. TSV format."
    figure: "Name of output file to storescatter plots for 3 principal components."
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette"
  }
}