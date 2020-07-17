version 1.0

task PslMap {
  input {
    String in_psl
    String map_file
    String out_psl
  }
  command <<<
    pslMap \
      ~{in_psl} \
      ~{map_file} \
      ~{out_psl}
  >>>
  parameter_meta {
    in_psl: ""
    map_file: ""
    out_psl: ""
  }
}