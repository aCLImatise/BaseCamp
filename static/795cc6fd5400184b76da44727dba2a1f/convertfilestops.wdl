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
    where: "dirin:  input directory for image files substr:  Use 'allfiles' to convert all files in the directory. res:  Input resolution of each image; assumed to all be the same fileout:  Output ps file."
  }
}