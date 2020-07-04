version 1.0

task CatDir {
  input {
    Boolean? non_z
    String dir
  }
  command <<<
    catDir \
      ~{dir} \
      ~{true="-nonz" false="" non_z}
  >>>
  parameter_meta {
    non_z: "Prints file name of non-zero length files"
    dir: ""
  }
}