version 1.0

task OcUtilUpdateresult {
  input {
    Boolean? recursive_operation
    Boolean? backup_original_copy
    String db_path
  }
  command <<<
    oc util update_result \
      ~{db_path} \
      ~{if (recursive_operation) then "-r" else ""} \
      ~{if (backup_original_copy) then "-c" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    recursive_operation: "recursive operation"
    backup_original_copy: "backup original copy with .bak extension"
    db_path: "path to a result db file or a directory"
  }
  output {
    File out_stdout = stdout()
  }
}