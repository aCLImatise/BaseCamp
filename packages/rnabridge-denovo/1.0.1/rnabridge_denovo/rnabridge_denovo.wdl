version 1.0

task Rnabridgedenovo {
  input {
    Int input_read_one
    Int input_read_two
    String output_bridge_sequence
  }
  command <<<
    rnabridge_denovo \
      ~{input_read_one} \
      ~{input_read_two} \
      ~{output_bridge_sequence}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rnabridge-denovo:1.0.1--hc9558a2_0"
  }
  parameter_meta {
    input_read_one: ""
    input_read_two: ""
    output_bridge_sequence: ""
  }
  output {
    File out_stdout = stdout()
  }
}