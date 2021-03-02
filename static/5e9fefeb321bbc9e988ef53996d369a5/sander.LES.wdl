version 1.0

task SanderLES {
  input {
    File? scaled_md
  }
  command <<<
    sander_LES \
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