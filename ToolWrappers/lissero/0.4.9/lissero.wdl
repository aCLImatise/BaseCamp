version 1.0

task Lissero {
  input {
    Float? serotype_db
    Float? min_id
    Float? min_cov
    File? log_file
    String fast_a_dot_dot_dot
  }
  command <<<
    lissero \
      ~{fast_a_dot_dot_dot} \
      ~{if defined(serotype_db) then ("--serotype_db " +  '"' + serotype_db + '"') else ""} \
      ~{if defined(min_id) then ("--min_id " +  '"' + min_id + '"') else ""} \
      ~{if defined(min_cov) then ("--min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/lissero:0.4.9--py_0"
  }
  parameter_meta {
    serotype_db: "[default: /usr/local/lib/python3.9/site-\\npackages/lissero/db]"
    min_id: "Minimum percent identity to accept a match. [0-100]\\n[default: 95.0]"
    min_cov: "Minimum coverage of the gene to accept a match.\\n[0-100]  [default: 95.0]"
    log_file: "Save log to a file instead of printing to stderr"
    fast_a_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}