version 1.0

task PlanemoCreateGist {
  input {
    Boolean? link_type
    String file_path
  }
  command <<<
    planemo create_gist \
      ~{file_path} \
      ~{if (link_type) then "--link_type" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    link_type: "[raw|html]  Link type to generate for the file."
    file_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}