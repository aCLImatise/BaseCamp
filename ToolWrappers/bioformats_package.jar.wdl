version 1.0

task BioformatsPackagejar {
  command <<<
    bioformats_package_jar
  >>>
  output {
    File out_stdout = stdout()
  }
}