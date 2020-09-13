version 1.0

task DgeniesGallery {
  command <<<
    dgenies gallery
  >>>
  output {
    File out_stdout = stdout()
  }
}