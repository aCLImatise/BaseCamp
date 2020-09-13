version 1.0

task FpaIndex {
  input {
    File? filename
    String? type
  }
  command <<<
    fpa index \
      ~{if defined(filename) then ("--filename " +  '"' + filename + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""}
  >>>
  parameter_meta {
    filename: "Write index of mapping passing filter in path passed as parameter"
    type: "Type of index, only reference read when it's query, target or both of them [default:\\nboth]  [possible values: query, target, both]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}