version 1.0

task Sander {
  input {
    File? scaled_md
  }
  command <<<
    sander \
      ~{if defined(scaled_md) then ("-scaledMD " +  '"' + scaled_md + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    scaled_md: "] -cph-data -ce-data <file>"
  }
  output {
    File out_stdout = stdout()
  }
}