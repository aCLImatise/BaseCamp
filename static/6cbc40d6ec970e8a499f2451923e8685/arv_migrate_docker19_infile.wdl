version 1.0

task ArvMigrateDocker19Infile {
  input {
    Boolean? verbose
    Boolean? force
    String arv_migrate_docker_one_nine
  }
  command <<<
    arv-migrate-docker19 infile \
      ~{arv_migrate_docker_one_nine} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    verbose: ""
    force: ""
    arv_migrate_docker_one_nine: ""
  }
}