version 1.0

task BiscuitRectangle {
  input {
    Boolean? output_file
    String? ref_dot_fa
  }
  command <<<
    biscuit rectangle \
      ~{ref_dot_fa} \
      ~{true="-o" false="" output_file}
  >>>
  parameter_meta {
    output_file: "output file [stdout]"
    ref_dot_fa: ""
  }
}