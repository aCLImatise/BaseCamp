version 1.0

task CHROMEISTER {
  input {
    Boolean? km_er
    Boolean? diffuse
    Boolean? dimension
    Boolean? out
    Boolean? db
    Boolean? var_5
    String? var_6
    String? database
  }
  command <<<
    CHROMEISTER \
      ~{var_6} \
      ~{database} \
      ~{if (km_er) then "-kmer" else ""} \
      ~{if (diffuse) then "-diffuse" else ""} \
      ~{if (dimension) then "-dimension" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (db) then "-db" else ""} \
      ~{if (var_5) then "-query" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chromeister:1.5.a--h516909a_0"
  }
  parameter_meta {
    km_er: "[Integer:   k>1 (default 32)]"
    diffuse: "[Integer:   z>0 (default 4)]"
    dimension: "Size of the output [Integer:   d>0 (default 1000)]"
    out: "[File path]"
    db: ""
    var_5: ""
    var_6: ""
    database: ""
  }
  output {
    File out_stdout = stdout()
  }
}