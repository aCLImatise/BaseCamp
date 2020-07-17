version 1.0

task Dconvlum {
  input {
    String in_file
    String out_file
    String ambient
  }
  command <<<
    dconvlum \
      ~{in_file} \
      ~{out_file} \
      ~{ambient}
  >>>
  parameter_meta {
    in_file: "VeriLUM characteristic curve file to be converted"
    out_file: "DCMTK display file to be written"
    ambient: "ambient light (cd/m^2, floating point value)"
  }
}