version 1.0

task ConvertNISTLibraryToTSVpy {
  command <<<
    convertNISTLibraryToTSV_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}