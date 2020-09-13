version 1.0

task FilterSeq {
  input {
    File? index
    String options
  }
  command <<<
    filter_seq \
      ~{options} \
      ~{if defined(index) then ("-index " +  '"' + index + '"') else ""}
  >>>
  parameter_meta {
    index: "an index file of the copy file"
    options: "-------"
  }
  output {
    File out_stdout = stdout()
  }
}