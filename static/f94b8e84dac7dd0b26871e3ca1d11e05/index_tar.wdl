version 1.0

task IndexTar {
  input {
    Boolean? d
    String tar_file
  }
  command <<<
    index_tar \
      ~{tar_file} \
      ~{true="-d" false="" d}
  >>>
  parameter_meta {
    d: ""
    tar_file: ""
  }
}