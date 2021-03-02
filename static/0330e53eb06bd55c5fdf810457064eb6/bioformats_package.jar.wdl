version 1.0

task BioformatsPackagejar {
  command <<<
    bioformats_package_jar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}