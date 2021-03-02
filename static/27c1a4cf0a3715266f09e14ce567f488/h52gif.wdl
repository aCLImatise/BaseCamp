version 1.0

task H52gif {
  input {
    Int? i
    Int h_five_file
    String gif_file
  }
  command <<<
    h52gif \
      ~{h_five_file} \
      ~{gif_file} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i: ""
    h_five_file: ""
    gif_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}