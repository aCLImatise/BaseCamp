version 1.0

task WltestQuery {
  input {
    Boolean? d
    Boolean? v
    String? k
    String wl_test
    String? n
    String work_list_db_dir
    String? query
  }
  command <<<
    wltest query \
      ~{wl_test} \
      ~{n} \
      ~{work_list_db_dir} \
      ~{query} \
      ~{if (d) then "-d" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0"
  }
  parameter_meta {
    d: ""
    v: ""
    k: ""
    wl_test: ""
    n: ""
    work_list_db_dir: ""
    query: ""
  }
  output {
    File out_stdout = stdout()
  }
}