version 1.0

task UniqueMerCount {
  input {
    String sorted_mer_list
  }
  command <<<
    uniqueMerCount \
      ~{sorted_mer_list}
  >>>
  parameter_meta {
    sorted_mer_list: ""
  }
  output {
    File out_stdout = stdout()
  }
}