version 1.0

task LinearDiscriminantAnalysispy {
  input {
    String? input_dataset_wide
    File? design
    String? id
    String? group
    String? levels
    String? cross_validation
    Int? n_components
    File? out
    File? out_classification
    File? out_classification_accuracy
    File? figure
    String? palette
    String? color
  }
  command <<<
    linear_discriminant_analysis_py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(levels) then ("--levels " +  '"' + levels + '"') else ""} \
      ~{if defined(cross_validation) then ("--cross_validation " +  '"' + cross_validation + '"') else ""} \
      ~{if defined(n_components) then ("--nComponents " +  '"' + n_components + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(out_classification) then ("--outClassification " +  '"' + out_classification + '"') else ""} \
      ~{if defined(out_classification_accuracy) then ("--outClassificationAccuracy " +  '"' + out_classification_accuracy + '"') else ""} \
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
    cross_validation: "Choice of cross-validation procedure for the -nc\\ndeterminantion: none, single, double."
    n_components: "Number of components [Default == 2]. Used only if\\n-cv=none."
    out: "Name of output file to store scores. TSV format."
    out_classification: "Name of output file to store classification. TSV\\nformat."
    out_classification_accuracy: "Name of output file to store classification accuracy.\\nTSV format."
    figure: "Name of output file to store scatter plots for scores"
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_classification = "${in_out_classification}"
    File out_out_classification_accuracy = "${in_out_classification_accuracy}"
    File out_figure = "${in_figure}"
  }
}