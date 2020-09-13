version 1.0

task Convertfilestops {
  input {
    String where
  }
  command <<<
    convertfilestops \
      ~{where}
  >>>
  parameter_meta {
    where: "dirin:  input directory for image files\\nsubstr:  Use 'allfiles' to convert all files\\nin the directory.\\nres:  Input resolution of each image;\\nassumed to all be the same\\nfileout:  Output ps file.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}