version 1.0

task ScpredTrainTestSplitR {
  input {
    File? input_sce_object
    String? normalised_counts_slot
    File? training_matrix
    File? test_matrix
    String? cell_types_column
    File? training_labels
    File? test_labels
    Int? random_seed
    String? training_ratio
  }
  command <<<
    scpred_train_test_split_R \
      ~{if defined(input_sce_object) then ("--input-sce-object " +  '"' + input_sce_object + '"') else ""} \
      ~{if defined(normalised_counts_slot) then ("--normalised-counts-slot " +  '"' + normalised_counts_slot + '"') else ""} \
      ~{if defined(training_matrix) then ("--training-matrix " +  '"' + training_matrix + '"') else ""} \
      ~{if defined(test_matrix) then ("--test-matrix " +  '"' + test_matrix + '"') else ""} \
      ~{if defined(cell_types_column) then ("--cell-types-column " +  '"' + cell_types_column + '"') else ""} \
      ~{if defined(training_labels) then ("--training-labels " +  '"' + training_labels + '"') else ""} \
      ~{if defined(test_labels) then ("--test-labels " +  '"' + test_labels + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(training_ratio) then ("--training-ratio " +  '"' + training_ratio + '"') else ""}
  >>>
  parameter_meta {
    input_sce_object: "Path to the input SCE object in .rds format"
    normalised_counts_slot: "Name of the slot with normalised counts matrix in SCE object. Default: normcounts"
    training_matrix: "Output path for training matrix in .rds format"
    test_matrix: "Output path for test matrix in .rds format"
    cell_types_column: "Column name for assigned cell types"
    training_labels: "Output path for training labels in text format"
    test_labels: "Output path for test labels in text format"
    random_seed: "Seed for random number generation"
    training_ratio: "Proportion of training/testing dataset split"
  }
  output {
    File out_stdout = stdout()
    File out_training_matrix = "${in_training_matrix}"
    File out_test_matrix = "${in_test_matrix}"
    File out_training_labels = "${in_training_labels}"
    File out_test_labels = "${in_test_labels}"
  }
}