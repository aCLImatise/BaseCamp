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
    File file
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
      ~{file}
  >>>
  parameter_meta {
    merge: ""
    separate: ""
    mate: ""
    var_pair: ""
    files: ""
    into: ""
    one: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}