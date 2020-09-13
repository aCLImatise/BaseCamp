version 1.0

task Bactopiaversionspy {
  input {
    Directory? directory_where_stored
    String var_1
    String versions
  }
  command <<<
    bactopia_versions_py \
      ~{var_1} \
      ~{versions} \
      ~{if defined(directory_where_stored) then ("--bactopia " +  '"' + directory_where_stored + '"') else ""}
  >>>
  parameter_meta {
    directory_where_stored: "Directory where Bactopia repository is stored."
    var_1: ""
    versions: ""
  }
  output {
    File out_stdout = stdout()
  }
}