version 1.0

task Dcod2lum {
  input {
    File in_file
    File out_file
  }
  command <<<
    dcod2lum \
      ~{in_file} \
      ~{out_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_file: "hardcopy characteristic curve file to be converted"
    out_file: "softcopy characteristic curve file to be written"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}