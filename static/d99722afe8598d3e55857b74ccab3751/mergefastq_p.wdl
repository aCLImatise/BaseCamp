version 1.0

task Mergefastqp {
  input {
    String merge
    String separate
    String mate
    String var_pair
    String files
    String into
    String one
    File var_file
  }
  command <<<
    mergefastq_p \
      ~{merge} \
      ~{separate} \
      ~{mate} \
      ~{var_pair} \
      ~{files} \
      ~{into} \
      ~{one} \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    merge: ""
    separate: ""
    mate: ""
    var_pair: ""
    files: ""
    into: ""
    one: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}