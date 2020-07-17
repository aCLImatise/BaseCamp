version 1.0

task BrBioflat.rb {
  input {
    String? primary
    String? secondary
    String? add_secondary
    Boolean? env
    String? env_arg
    Boolean? renew
    String? make_index
    String? make_index_bdb
    String? format
  }
  command <<<
    br_bioflat.rb \
      ~{if defined(primary) then ("--primary " +  '"' + primary + '"') else ""} \
      ~{if defined(secondary) then ("--secondary " +  '"' + secondary + '"') else ""} \
      ~{if defined(add_secondary) then ("--add-secondary " +  '"' + add_secondary + '"') else ""} \
      ~{true="--env" false="" env} \
      ~{if defined(env_arg) then ("--env-arg " +  '"' + env_arg + '"') else ""} \
      ~{true="--renew" false="" renew} \
      ~{if defined(make_index) then ("--makeindex " +  '"' + make_index + '"') else ""} \
      ~{if defined(make_index_bdb) then ("--makeindexBDB " +  '"' + make_index_bdb + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  parameter_meta {
    primary: "set primary namespece to UNIQUE Default primary/secondary namespaces depend on each format of flatfiles."
    secondary: "set secondary namespaces. You may use this option many times to specify more than one namespace."
    add_secondary: "add secondary namespaces to default specification. You can use this option many times."
    env: "=/path/to/env     use env program to run sort (default: /usr/bin/env)"
    env_arg: "argument given to the env program (default: LC_ALL=C) (multiple --env-arg=XXXXXX can be specified)"
    renew: "re-read all flatfiles and update whole index"
    make_index: "same as --create --type flat --location DIR --dbname DBNAME"
    make_index_bdb: "same as --create --type bdb  --location DIR --dbname DBNAME"
    format: "instead of genbank|embl|fasta, specifing a class name is allowed"
  }
}