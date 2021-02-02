version 1.0

task Dxfetchbundleddepends {
  command <<<
    dx_fetch_bundled_depends
  >>>
  output {
    File out_stdout = stdout()
  }
}