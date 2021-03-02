version 1.0

task Anviscriptgetcollectioninfo {
  command <<<
    anvi_script_get_collection_info
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}