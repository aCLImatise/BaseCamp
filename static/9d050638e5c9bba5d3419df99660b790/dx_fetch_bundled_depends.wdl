version 1.0

task Dxfetchbundleddepends {
  command <<<
    dx_fetch_bundled_depends
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}