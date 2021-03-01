version 1.0

task Abyssfatoagp {
  input {
    Boolean? more_options
    Boolean? options
  }
  command <<<
    abyss_fatoagp \
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