version 1.0

task AtlasDownload {
  input {
    File? db_dir
    Int? jobs
    String? snake_make_args
  }
  command <<<
    atlas download \
      ~{snake_make_args} \
      ~{if defined(db_dir) then ("--db-dir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagenome-atlas:2.4.5--py_0"
  }
  parameter_meta {
    db_dir: "location to store databases  [required]"
    jobs: "number of simultaneous downloads  [default: 1]"
    snake_make_args: ""
  }
  output {
    File out_stdout = stdout()
  }
}