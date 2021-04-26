version 1.0

task MiMsiTrainTest {
  input {
    Int? epochs
    Float? lr
    Float? reg
    Int? seed
    Boolean? no_cuda
    String? name
    Directory? train_location
    Directory? test_location
    String? save
  }
  command <<<
    mi_msi_train_test \
      ~{if defined(epochs) then ("--epochs " +  '"' + epochs + '"') else ""} \
      ~{if defined(lr) then ("--lr " +  '"' + lr + '"') else ""} \
      ~{if defined(reg) then ("--reg " +  '"' + reg + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (no_cuda) then "--no-cuda" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(train_location) then ("--train-location " +  '"' + train_location + '"') else ""} \
      ~{if defined(test_location) then ("--test-location " +  '"' + test_location + '"') else ""} \
      ~{if defined(save) then ("--save " +  '"' + save + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mimsi:0.4.3--pyhdfd78af_0"
  }
  parameter_meta {
    epochs: "Number of epochs to train (default: 40)"
    lr: "Learning rate used in training (default: 0.0001)"
    reg: "Weight decay used in training (default: 5e-4)"
    seed: "Random Seed (default: 2)"
    no_cuda: "Disables CUDA training for use off GPU, if this is not\\nspecified the utility will check availability of\\ntorch.cuda"
    name: "Name of the model,"
    train_location: "Directory Location for Training Data"
    test_location: "Directory Location for Testing Data"
    save: "Save the model weights to disk after training"
  }
  output {
    File out_stdout = stdout()
  }
}