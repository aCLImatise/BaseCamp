version 1.0

task Bactopiaversionspy {
  input {
    Directory? directory_where_repository
    String var_1
    String versions
  }
  command <<<
    bactopia_versions_py \
      ~{var_1} \
      ~{versions} \
      ~{if defined(directory_where_repository) then ("--bactopia " +  '"' + directory_where_repository + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bactopia:1.6.4--0"
  }
  parameter_meta {
    directory_where_repository: "Directory where Bactopia repository is stored."
    var_1: ""
    versions: ""
  }
  output {
    File out_stdout = stdout()
  }
}