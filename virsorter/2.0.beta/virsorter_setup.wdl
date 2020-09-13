version 1.0

task VirsorterSetup {
  input {
    File? db_dir
    Int? jobs
    String? snake_make_args
  }
  command <<<
    virsorter setup \
      ~{snake_make_args} \
      ~{if defined(db_dir) then ("--db-dir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""}
  >>>
  parameter_meta {
    db_dir: "diretory path for databases  [required]"
    jobs: "number of simultaneous downloads  [default: 8]"
    snake_make_args: ""
  }
  output {
    File out_stdout = stdout()
  }
}