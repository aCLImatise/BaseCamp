version 1.0

task BiscuitRectangle {
  input {
    File? output_file
    String? ref_dot_fa
  }
  command <<<
    biscuit rectangle \
      ~{ref_dot_fa} \
      ~{if (output_file) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file: "output file [stdout]"
    ref_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}