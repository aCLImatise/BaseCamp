version 1.0

task MimoddSnapbatch {
  input {
    Boolean? one_more_completely
    File? input_file_completely
    String snap_batch
  }
  command <<<
    mimodd snap_batch \
      ~{snap_batch} \
      ~{if (one_more_completely) then "-s" else ""} \
      ~{if defined(input_file_completely) then ("-f " +  '"' + input_file_completely + '"') else ""}
  >>>
  parameter_meta {
    one_more_completely: "\\\"COMMAND\\\" [\\\"COMMAND\\\" ...]\\none or more completely specified command line calls to\\nthe snap tool (use \\\"\\\" to enclose individual lines)"
    input_file_completely: "an input file of completely specified command line\\ncalls to the snap tool\\n"
    snap_batch: ""
  }
  output {
    File out_stdout = stdout()
  }
}