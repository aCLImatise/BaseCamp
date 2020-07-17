version 1.0

task Qvality {
  input {
    Boolean? include_negative
    String target_file
    String null_file
  }
  command <<<
    qvality \
      ~{target_file} \
      ~{null_file} \
      ~{true="--include-negative" false="" include_negative}
  >>>
  parameter_meta {
    include_negative: "Include negative hits (decoy) probabilities  in the results"
    target_file: ""
    null_file: ""
  }
}