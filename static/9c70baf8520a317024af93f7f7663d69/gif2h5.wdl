version 1.0

task Gif2h5 {
  input {
    String gif_file
    String hdf_file
  }
  command <<<
    gif2h5 \
      ~{gif_file} \
      ~{hdf_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gif_file: ""
    hdf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}