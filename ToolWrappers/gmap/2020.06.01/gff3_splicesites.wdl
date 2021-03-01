version 1.0

task Gff3Splicesites {
  input {
    Boolean? more_options
    Boolean? options
  }
  command <<<
    gff3_splicesites \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}