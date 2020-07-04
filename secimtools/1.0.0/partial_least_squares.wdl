version 1.0

task PartialLeastSquares.py {
  input {
    String? input_dataset_wide
    String? design
    String? id
    String? group
    String? levels
    String? to_compare
    String? cross_validation
    String? n_comp
    String? out_scores
    String? out_weights
    String? out_classification
    String? out_classification_accuracy
    String? figure
    String? palette
    String? color
    Boolean? debug
  }
  command <<<
    partial_least_squares.py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(levels) then ("--levels " +  '"' + levels + '"') else ""} \
      ~{if defined(to_compare) then ("--toCompare " +  '"' + to_compare + '"') else ""} \
      ~{if defined(cross_validation) then ("--cross_validation " +  '"' + cross_validation + '"') else ""} \
      ~{if defined(n_comp) then ("--nComp " +  '"' + n_comp + '"') else ""} \
      ~{if defined(out_scores) then ("--outScores " +  '"' + out_scores + '"') else ""} \
      ~{if defined(out_weights) then ("--outWeights " +  '"' + out_weights + '"') else ""} \
      ~{if defined(out_classification) then ("--outClassification " +  '"' + out_classification + '"') else ""} \
      ~{if defined(out_classification_accuracy) then ("--outClassificationAccuracy " +  '"' + out_classification_accuracy + '"') else ""} \
      ~{if defined(figure) then ("--figure " +  '"' + figure + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers."
    group: "Name of the column with groups."
    levels: "Different groups to sort by separeted by commas."
    to_compare: "Name of the elements to compare in group col."
    cross_validation: "Choice of cross-validation procedure for the -nc determinantion: none, single, double."
    n_comp: "Number of components."
    out_scores: "Name of output file to store loadings. TSV format."
    out_weights: "Name of output file to store weights. TSV format."
    out_classification: "Name of output file to store classification. TSV format."
    out_classification_accuracy: "Name of output file to store classification accuracy. TSV format."
    figure: "Name of output file to store scatter plots for scores"
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette"
    debug: "Add debugging log output."
  }
}