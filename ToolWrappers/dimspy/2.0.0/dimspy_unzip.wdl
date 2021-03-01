version 1.0

task DimspyUnzip {
  input {
    File? var_input
    Directory? directory_to_write
  }
  command <<<
    dimspy unzip \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(directory_to_write) then ("--output " +  '"' + directory_to_write + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_input: "file[.zip]"
    directory_to_write: "Directory to write to.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}