version 1.0

task LynerAutoencode {
  input {
    String? layer_config
    File? from_file
    File? store_model
    Boolean? loss
    Boolean? optimiser
    Int? epochs
    Int? batch_size
    Boolean? shuffle
    Float? validation_split
    Float? adjust_weights
    Boolean? mode
  }
  command <<<
    lyner autoencode \
      ~{if defined(layer_config) then ("--layer-config " +  '"' + layer_config + '"') else ""} \
      ~{if defined(from_file) then ("--from-file " +  '"' + from_file + '"') else ""} \
      ~{if defined(store_model) then ("--store-model " +  '"' + store_model + '"') else ""} \
      ~{if (loss) then "--loss" else ""} \
      ~{if (optimiser) then "--optimiser" else ""} \
      ~{if defined(epochs) then ("--epochs " +  '"' + epochs + '"') else ""} \
      ~{if defined(batch_size) then ("--batch-size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(shuffle) then ("--shuffle " +  '"' + shuffle + '"') else ""} \
      ~{if defined(validation_split) then ("--validation-split " +  '"' + validation_split + '"') else ""} \
      ~{if defined(adjust_weights) then ("--adjust-weights " +  '"' + adjust_weights + '"') else ""} \
      ~{if (mode) then "--mode" else ""}
  >>>
  parameter_meta {
    layer_config: ""
    from_file: ""
    store_model: ""
    loss: "[kld|mae|mape|mse|msle|binary_crossentropy|categorical_crossentropy|categorical_hinge|cosine|cosine_proximity|hinge|logcosh|poisson|sparse_categorical_crossentropy|squared_hinge]"
    optimiser: "[adadelta|adagrad|adam|adamax|nadam|rmsprop|sgd]"
    epochs: ""
    batch_size: ""
    shuffle: ""
    validation_split: "RANGE"
    adjust_weights: ""
    mode: "[discard|nodes|weights]"
  }
  output {
    File out_stdout = stdout()
  }
}