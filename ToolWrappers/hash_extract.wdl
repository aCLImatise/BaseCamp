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
  parameter_meta {
    i: ""
    hash_file: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}