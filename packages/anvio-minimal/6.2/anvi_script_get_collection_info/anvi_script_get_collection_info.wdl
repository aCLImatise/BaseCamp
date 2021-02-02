version 1.0

task Anviscriptgetcollectioninfo {
  command <<<
    anvi_script_get_collection_info
  >>>
  output {
    File out_stdout = stdout()
  }
}