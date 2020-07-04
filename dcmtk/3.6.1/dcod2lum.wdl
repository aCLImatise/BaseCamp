version 1.0

task Dcod2lum {
  input {
    String in_file
    String out_file
  }
  command <<<
    dcod2lum \
      ~{in_file} \
      ~{out_file}
  >>>
  parameter_meta {
    in_file: "hardcopy characteristic curve file to be converted"
    out_file: "softcopy characteristic curve file to be written"
  }
}