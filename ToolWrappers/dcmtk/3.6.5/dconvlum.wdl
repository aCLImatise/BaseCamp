version 1.0

task Dconvlum {
  input {
    File in_file
    File out_file
    String ambient
  }
  command <<<
    dconvlum \
      ~{in_file} \
      ~{out_file} \
      ~{ambient}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0"
  }
  parameter_meta {
    in_file: "VeriLUM characteristic curve file to be converted"
    out_file: "DCMTK display file to be written"
    ambient: "ambient light (cd/m^2, floating point value)"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}