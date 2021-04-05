version 1.0

task Dadaist2getdb {
  input {
    String printed_dot
  }
  command <<<
    dadaist2_getdb \
      ~{printed_dot}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.7--hdfd78af_1"
  }
  parameter_meta {
    printed_dot: "DOWNLOAD ONE OR MORE DATABASES\\ndadaist2-getdb -d DATABASE_NAME [-o OUTPUT_DIR]\\ndadaist2-getdb -d DB1 -d DB2 -d DB3 [-o OUTPUT_DIR]\\ndadaist2-getdb -q QUERY_STRING"
  }
  output {
    File out_stdout = stdout()
  }
}