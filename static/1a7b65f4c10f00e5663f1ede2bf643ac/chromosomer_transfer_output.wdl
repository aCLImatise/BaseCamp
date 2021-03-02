version 1.0

task ChromosomerTransferOutput {
  input {
    String? f
    String chromosome_r
    String transfer
    String var_map
    String annotation
    String var_output
  }
  command <<<
    chromosomer transfer output \
      ~{chromosome_r} \
      ~{transfer} \
      ~{var_map} \
      ~{annotation} \
      ~{var_output} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    f: ""
    chromosome_r: ""
    transfer: ""
    var_map: ""
    annotation: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}