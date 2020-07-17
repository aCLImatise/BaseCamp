version 1.0

task LinearDiscriminantAnalysis.py {
  input {
    String? input_dataset_wide
    String? design
    String? id
    String? group
    String? levels
    String? cross_validation
    String? n_components
    String? out
    String? out_classification
    String? out_classification_accuracy
    String? figure
    String? palette
    String? color
  }
  command <<<
    linear_discriminant_analysis.py \
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
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers."
    group: "Name of the column with groups."
    levels: "Different groups to sort by separeted by commas."
    cross_validation: "Choice of cross-validation procedure for the -nc determinantion: none, single, double."
    n_components: "Number of components [Default == 2]. Used only if -cv=none."
    out: "Name of output file to store scores. TSV format."
    out_classification: "Name of output file to store classification. TSV format."
    out_classification_accuracy: "Name of output file to store classification accuracy. TSV format."
    figure: "Name of output file to store scatter plots for scores"
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette"
  }
}