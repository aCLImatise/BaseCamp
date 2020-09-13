version 1.0

task ExtractSamXargssh {
  command <<<
    extract_sam_xargs_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}