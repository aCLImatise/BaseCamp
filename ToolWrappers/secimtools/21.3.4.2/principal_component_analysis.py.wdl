version 1.0

task PrincipalComponentAnalysispy {
  input {
    String? input_dataset_wide
    File? design
    String? id
    String? group
    String? levels
    File? load_out
    File? score_out
    File? summary_out
    File? figure
    String? palette
    String? color
  }
  command <<<
    principal_component_analysis_py \
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
  runtime {
    docker: "quay.io/biocontainers/secimtools:21.3.4.2--py_0"
  }
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers."
    group: "Name of the column with groups."
    levels: "Different groups to sort by separeted by commas."
    load_out: "Name of output file to store loadings. TSV format."
    score_out: "Name of output file to store scores. TSV format."
    summary_out: "Name of output file to store summaries of the\\ncomponents. TSV format."
    figure: "Name of output file to storescatter plots for 3\\nprincipal components."
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette\\n"
  }
  output {
    File out_stdout = stdout()
    File out_load_out = "${in_load_out}"
    File out_score_out = "${in_score_out}"
    File out_summary_out = "${in_summary_out}"
    File out_figure = "${in_figure}"
  }
}