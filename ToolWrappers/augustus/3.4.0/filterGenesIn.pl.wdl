version 1.0

task FilterGenesInpl {
  input {
    String name_file
    String dbfile
  }
  command <<<
    filterGenesIn_pl \
      ~{name_file} \
      ~{dbfile}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    name_file: ""
    dbfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}