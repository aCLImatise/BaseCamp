version 1.0

task ExtractUnmappedAndOnesidesh {
  command <<<
    extract_unmapped_and_oneside_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}