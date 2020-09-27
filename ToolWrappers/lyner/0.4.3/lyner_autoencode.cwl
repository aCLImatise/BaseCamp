class: CommandLineTool
id: lyner_autoencode.cwl
inputs:
- id: in_layer_config
  doc: "-f, --from-file FILE\n-s, --store-model PATH\n--loss [kld|mae|mape|mse|msle|binary_crossentropy|categorical_crossentropy|categorical_hinge|cosine|cosine_proximity|hinge|logcosh|poisson|sparse_categorical_crossentropy|squared_hinge]\n\
    -o, --optimiser [adadelta|adagrad|adam|adamax|nadam|rmsprop|sgd]\n-e, --epochs\
    \ INTEGER\n-b, --batch-size INTEGER\n-s, --shuffle BOOLEAN\n-v, --validation-split\
    \ FLOAT RANGE\n-w, --adjust-weights FLOAT\n-m, --mode [discard|nodes|weights]\n\
    --help                          Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --layer-config
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- autoencode
