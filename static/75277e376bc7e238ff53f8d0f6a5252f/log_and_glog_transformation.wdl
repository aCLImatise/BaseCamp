version 1.0

task LogAndGlogTransformation.py {
  input {
    String? input_dataset_wide
    String? design
    String? uniqid
    String? transformation
    String? log_base
    String? lambda_value
    String? o_name
    Boolean? debug
  }
  command <<<
    log_and_glog_transformation.py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(uniqid) then ("--uniqID " +  '"' + uniqid + '"') else ""} \
      ~{if defined(transformation) then ("--transformation " +  '"' + transformation + '"') else ""} \
      ~{if defined(log_base) then ("--log_base " +  '"' + log_base + '"') else ""} \
      ~{if defined(lambda_value) then ("--lambda_value " +  '"' + lambda_value + '"') else ""} \
      ~{if defined(o_name) then ("--oname " +  '"' + o_name + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    uniqid: "Name of the column with unique identifiers."
    transformation: "Type of transformation to use (log vs glog)"
    log_base: "Base of the logarithm to use"
    lambda_value: "Lambda parameter which is used only for G-Log transformation."
    o_name: "Output file name."
    debug: "Add debugging log output."
  }
}