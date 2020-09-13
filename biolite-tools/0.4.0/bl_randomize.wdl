version 1.0

task Blrandomize {
  input {
    Boolean? specify_multiple_input_files
    Boolean? specify_multiple_output_files
    Boolean? use_order_readorder
    Boolean? write_random_order
    String randomize
  }
  command <<<
    bl_randomize \
      ~{randomize} \
      ~{if (specify_multiple_input_files) then "-i" else ""} \
      ~{if (specify_multiple_output_files) then "-o" else ""} \
      ~{if (use_order_readorder) then "-r" else ""} \
      ~{if (write_random_order) then "-w" else ""}
  >>>
  parameter_meta {
    specify_multiple_input_files: "specify multiple INPUT files"
    specify_multiple_output_files: "specify multiple OUTPUT files"
    use_order_readorder: "use the order in READ-ORDER instead of a random order"
    write_random_order: "write the random order to WRITE-ORDER"
    randomize: ""
  }
  output {
    File out_stdout = stdout()
  }
}