version 1.0

task VirsorterSetup {
  input {
    File? db_dir
    Int? jobs
    Boolean? skip_deps_install
    String? snake_make_args
  }
  command <<<
    virsorter setup \
      ~{snake_make_args} \
      ~{if defined(db_dir) then ("--db-dir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if (skip_deps_install) then "--skip-deps-install" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/virsorter:2.2.2--pyhdfd78af_0"
  }
  parameter_meta {
    db_dir: "diretory path for databases  [required]"
    jobs: "number of simultaneous downloads  [default: 2]"
    skip_deps_install: "skip dependency installation (if you want to\\ninstall on your own as in development version)\\n[default: False]"
    snake_make_args: ""
  }
  output {
    File out_stdout = stdout()
  }
}