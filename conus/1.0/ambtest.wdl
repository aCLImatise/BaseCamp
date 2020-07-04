version 1.0

task Ambtest {
  input {
    String? m
    Boolean? options
    String seq_file_in
  }
  command <<<
    ambtest \
      ~{seq_file_in} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    m: ""
    options: ""
    seq_file_in: ""
  }
}