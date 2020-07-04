version 1.0

task ScoreFixed {
  input {
    Boolean? negative_model_regular
    Boolean? use_null_model
    Boolean? output_simple_format
    String pos_model
    String neg_model
  }
  command <<<
    score-fixed \
      ~{pos_model} \
      ~{neg_model} \
      ~{true="-I" false="" negative_model_regular} \
      ~{true="-N" false="" use_null_model} \
      ~{true="-s" false="" output_simple_format}
  >>>
  parameter_meta {
    negative_model_regular: "Negative model is regular ICM, not fixed-length ICM"
    use_null_model: "Use NULL negative model, i.e., constant zero"
    output_simple_format: "Output simple format of string num and 1 or -1"
    pos_model: ""
    neg_model: ""
  }
}