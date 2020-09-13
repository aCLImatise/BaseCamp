version 1.0

task IndexTar {
  input {
    Boolean? d
    String tar_file
  }
  command <<<
    index_tar \
      ~{tar_file} \
      ~{if (d) then "-d" else ""}
  >>>
  parameter_meta {
    d: ""
    tar_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}