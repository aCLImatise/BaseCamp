version 1.0

task BlRandomize {
  input {
    Boolean? specify_multiple_input_files
    Boolean? specify_multiple_output_files
    Boolean? use_order_readorder
    Boolean? write_random_order
    String randomize
  }
  command <<<
    bl-randomize \
      ~{randomize} \
      ~{true="-i" false="" specify_multiple_input_files} \
      ~{true="-o" false="" specify_multiple_output_files} \
      ~{true="-r" false="" use_order_readorder} \
      ~{true="-w" false="" write_random_order}
  >>>
  parameter_meta {
    specify_multiple_input_files: "specify multiple INPUT files"
    specify_multiple_output_files: "specify multiple OUTPUT files"
    use_order_readorder: "use the order in READ-ORDER instead of a random order"
    write_random_order: "write the random order to WRITE-ORDER"
    randomize: ""
  }
}