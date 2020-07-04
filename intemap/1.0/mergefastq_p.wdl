version 1.0

task MergefastqP {
  input {
    String merge
    String separate
    String mate
    String var_pair
    File files
    Int into
    String one
    File file
  }
  command <<<
    mergefastq-p \
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
}