version 1.0

task FaSomeRecords {
  input {
    Boolean? exclude
    String in_dot_fa
    String list_file
    String out_dot_fa
  }
  command <<<
    faSomeRecords \
      ~{in_dot_fa} \
      ~{list_file} \
      ~{out_dot_fa} \
      ~{true="-exclude" false="" exclude}
  >>>
  parameter_meta {
    exclude: "- output sequences not in the list file."
    in_dot_fa: ""
    list_file: ""
    out_dot_fa: ""
  }
}