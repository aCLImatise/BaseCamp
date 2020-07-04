version 1.0

task Lorma.sh {
  input {
    String? sequence_data_intermediate
    String? lordec_steps
  }
  command <<<
    lorma.sh \
      ~{if defined(sequence_data_intermediate) then ("-s " +  '"' + sequence_data_intermediate + '"') else ""} \
      ~{if defined(lordec_steps) then ("-n " +  '"' + lordec_steps + '"') else ""}
  >>>
  parameter_meta {
    sequence_data_intermediate: "the sequence data of intermediate LoRDEC steps"
    lordec_steps: "LoRDEC steps"
  }
}