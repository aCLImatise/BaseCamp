version 1.0

task Scorefixed {
  input {
    Boolean? negative_model_regular
    Boolean? use_null_model
    Boolean? output_simple_format
    String pos_model
    String neg_model
  }
  command <<<
    score_fixed \
      ~{pos_model} \
      ~{neg_model} \
      ~{if (negative_model_regular) then "-I" else ""} \
      ~{if (use_null_model) then "-N" else ""} \
      ~{if (output_simple_format) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    negative_model_regular: "Negative model is regular ICM, not fixed-length ICM"
    use_null_model: "Use NULL negative model, i.e., constant zero"
    output_simple_format: "Output simple format of string num and 1 or -1"
    pos_model: ""
    neg_model: ""
  }
  output {
    File out_stdout = stdout()
  }
}