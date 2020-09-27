version 1.0

task LynerAutoencode {
  input {
    Boolean? layer_config
  }
  command <<<
    lyner autoencode \
      ~{if defined(layer_config) then ("--layer-config " +  '"' + layer_config + '"') else ""}
  >>>
  parameter_meta {
    layer_config: "-f, --from-file FILE\\n-s, --store-model PATH\\n--loss [kld|mae|mape|mse|msle|binary_crossentropy|categorical_crossentropy|categorical_hinge|cosine|cosine_proximity|hinge|logcosh|poisson|sparse_categorical_crossentropy|squared_hinge]\\n-o, --optimiser [adadelta|adagrad|adam|adamax|nadam|rmsprop|sgd]\\n-e, --epochs INTEGER\\n-b, --batch-size INTEGER\\n-s, --shuffle BOOLEAN\\n-v, --validation-split FLOAT RANGE\\n-w, --adjust-weights FLOAT\\n-m, --mode [discard|nodes|weights]\\n--help                          Show this message and exit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}