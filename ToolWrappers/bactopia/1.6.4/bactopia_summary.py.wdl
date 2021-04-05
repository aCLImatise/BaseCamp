version 1.0

task Bactopiasummarypy {
  input {
    Directory? directory_where_repository
    String var_1
    String summary
  }
  command <<<
    bactopia_summary_py \
      ~{var_1} \
      ~{summary} \
      ~{if defined(directory_where_repository) then ("--bactopia " +  '"' + directory_where_repository + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bactopia:1.6.4--0"
  }
  parameter_meta {
    directory_where_repository: "Directory where Bactopia repository is stored."
    var_1: ""
    summary: ""
  }
  output {
    File out_stdout = stdout()
  }
}