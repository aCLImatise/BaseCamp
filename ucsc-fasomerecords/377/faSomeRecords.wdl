version 1.0

task FaSomeRecords {
  input {
    File? exclude
    String in_dot_fa
    String list_file
  }
  command <<<
    faSomeRecords \
      ~{in_dot_fa} \
      ~{list_file} \
      ~{if (exclude) then "-exclude" else ""}
  >>>
  parameter_meta {
    exclude: "- output sequences not in the list file."
    in_dot_fa: ""
    list_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_exclude = "${in_exclude}"
  }
}