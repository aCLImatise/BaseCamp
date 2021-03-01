version 1.0

task PsassConvert {
  input {
    File? output_file
    String var_input
  }
  command <<<
    psass convert \
      ~{var_input} \
      ~{if (output_file) then "--output-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file: "TEXT    Write to an output file instead of stdout"
    var_input: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}