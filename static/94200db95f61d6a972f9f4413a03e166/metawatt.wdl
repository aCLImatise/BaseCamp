version 1.0

task Metawatt {
  input {
    Boolean? threads
    Boolean? temp_folder
    Boolean? cov_rel_weight
    Boolean? skip_database_update
    Boolean? check_dependencies
    Int? jar
    String java
  }
  command <<<
    metawatt \
      ~{java} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (temp_folder) then "--temp-folder" else ""} \
      ~{if (cov_rel_weight) then "--cov-rel-weight" else ""} \
      ~{if (skip_database_update) then "--skip-database-update" else ""} \
      ~{if (check_dependencies) then "--check-dependencies" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    threads: "[number of threads/processors]"
    temp_folder: "[temp folder used]"
    cov_rel_weight: "[relative weight of differential coverage scores versus tetranucleotide scores]"
    skip_database_update: "(do not update databases)"
    check_dependencies: "(check dependencies and exit)"
    jar: ""
    java: ""
  }
  output {
    File out_stdout = stdout()
  }
}