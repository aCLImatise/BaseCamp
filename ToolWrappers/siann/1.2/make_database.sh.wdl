version 1.0

task MakeDatabasesh {
  input {
    String? found
  }
  command <<<
    make_database_sh \
      ~{if defined(found) then ("-h " +  '"' + found + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/siann:1.2--hdfd78af_1"
  }
  parameter_meta {
    found: "found"
  }
  output {
    File out_stdout = stdout()
  }
}