version 1.0

task PoppunkDbInfopy {
  input {
    Boolean? list_samples
    String db
  }
  command <<<
    poppunk_db_info_py \
      ~{db} \
      ~{if (list_samples) then "--list-samples" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0"
  }
  parameter_meta {
    list_samples: "List every sample in the database"
    db: "Database file (.h5)"
  }
  output {
    File out_stdout = stdout()
  }
}