version 1.0

task HashExtract {
  input {
    String? i
    String hash_file
    String? name
  }
  command <<<
    hash_extract \
      ~{hash_file} \
      ~{name} \
      ~{if defined(i) then ("-I " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0"
  }
  parameter_meta {
    i: ""
    hash_file: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}