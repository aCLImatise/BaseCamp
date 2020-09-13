version 1.0

task LoadFeatures {
  input {
    String? are_ungapped
    String? is_the_iid
  }
  command <<<
    loadFeatures \
      ~{if defined(are_ungapped) then ("-u " +  '"' + are_ungapped + '"') else ""} \
      ~{if defined(is_the_iid) then ("-i " +  '"' + is_the_iid + '"') else ""}
  >>>
  parameter_meta {
    are_ungapped: "are ungapped"
    is_the_iid: "is the IID"
  }
  output {
    File out_stdout = stdout()
  }
}