version 1.0

task ImmunemlResultPath {
  input {
    String? tool
    String immune_ml
    String specification_path
    String result_path
  }
  command <<<
    immune_ml result_path \
      ~{immune_ml} \
      ~{specification_path} \
      ~{result_path} \
      ~{if defined(tool) then ("--tool " +  '"' + tool + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/immuneml:1.1.4--py_0"
  }
  parameter_meta {
    tool: ""
    immune_ml: ""
    specification_path: ""
    result_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}