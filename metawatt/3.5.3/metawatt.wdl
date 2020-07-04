version 1.0

task Metawatt {
  input {
    Boolean? threads
    Boolean? temp_folder
    Boolean? cov_rel_weight
    Boolean? skip_database_update
    Boolean? check_dependencies
    String? jar
    String java
  }
  command <<<
    metawatt \
      ~{java} \
      ~{true="--threads" false="" threads} \
      ~{true="--temp-folder" false="" temp_folder} \
      ~{true="--cov-rel-weight" false="" cov_rel_weight} \
      ~{true="--skip-database-update" false="" skip_database_update} \
      ~{true="--check-dependencies" false="" check_dependencies} \
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
}