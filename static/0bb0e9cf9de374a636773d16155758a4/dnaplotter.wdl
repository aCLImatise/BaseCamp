version 1.0

task Dnaplotter {
  input {
    File? read_template_file
  }
  command <<<
    dnaplotter \
      ~{if defined(read_template_file) then ("-t " +  '"' + read_template_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_template_file: "Read a template file"
  }
  output {
    File out_stdout = stdout()
  }
}