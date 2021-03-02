version 1.0

task BrBioflatrb {
  input {
    String? namespace
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
    br_bioflat_rb \
      ~{if defined(namespace) then ("--namespace " +  '"' + namespace + '"') else ""} \
      ~{if defined(primary) then ("--primary " +  '"' + primary + '"') else ""} \
      ~{if defined(secondary) then ("--secondary " +  '"' + secondary + '"') else ""} \
      ~{if defined(add_secondary) then ("--add-secondary " +  '"' + add_secondary + '"') else ""} \
      ~{if (env) then "--env" else ""} \
      ~{if defined(env_arg) then ("--env-arg " +  '"' + env_arg + '"') else ""} \
      ~{if (renew) then "--renew" else ""} \
      ~{if defined(make_index) then ("--makeindex " +  '"' + make_index + '"') else ""} \
      ~{if defined(make_index_bdb) then ("--makeindexBDB " +  '"' + make_index_bdb + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    namespace: "set serch namespace to NAME"
    primary: "set primary namespece to UNIQUE\\nDefault primary/secondary namespaces depend on\\neach format of flatfiles."
    secondary: "set secondary namespaces.\\nYou may use this option many times to specify\\nmore than one namespace."
    add_secondary: "add secondary namespaces to default specification.\\nYou can use this option many times."
    env: "=/path/to/env     use env program to run sort (default: /usr/bin/env)"
    env_arg: "argument given to the env program (default: LC_ALL=C)\\n(multiple --env-arg=XXXXXX can be specified)"
    renew: "re-read all flatfiles and update whole index"
    make_index: "/DBNAME\\nsame as --create --type flat --location DIR --dbname DBNAME"
    make_index_bdb: "/DBNAME\\nsame as --create --type bdb  --location DIR --dbname DBNAME"
    format: "instead of genbank|embl|fasta, specifing a class name is allowed"
  }
  output {
    File out_stdout = stdout()
  }
}