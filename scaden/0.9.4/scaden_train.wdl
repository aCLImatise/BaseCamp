version 1.0

task ScadenTrain {
  input {
    String? train_datasets
    File? model_dir
    Int? batch_size
    Float? learning_rate
    Int? steps
    String training_data
  }
  command <<<
    scaden train \
      ~{training_data} \
      ~{if defined(train_datasets) then ("--train_datasets " +  '"' + train_datasets + '"') else ""} \
      ~{if defined(model_dir) then ("--model_dir " +  '"' + model_dir + '"') else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(learning_rate) then ("--learning_rate " +  '"' + learning_rate + '"') else ""} \
      ~{if defined(steps) then ("--steps " +  '"' + steps + '"') else ""}
  >>>
  parameter_meta {
    train_datasets: "Datasets used for training. Uses all by default."
    model_dir: "Path to store the model in"
    batch_size: "Batch size to use for training. Default: 128"
    learning_rate: "Learning rate used for training. Default: 0.0001"
    steps: "Number of training steps"
    training_data: ""
  }
  output {
    File out_stdout = stdout()
  }
}