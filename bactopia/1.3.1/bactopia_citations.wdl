version 1.0

task BactopiaCitations.py {
  input {
    String? directory_where_stored
    String var_1
    String citations
  }
  command <<<
    bactopia-citations.py \
      ~{var_1} \
      ~{citations} \
      ~{if defined(directory_where_stored) then ("--bactopia " +  '"' + directory_where_stored + '"') else ""}
  >>>
  parameter_meta {
    directory_where_stored: "Directory where Bactopia repository is stored."
    var_1: ""
    citations: ""
  }
}