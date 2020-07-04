version 1.0

task Splitseq {
  input {
    String? option
    String run_name
  }
  command <<<
    splitseq \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    option: ""
    run_name: ""
  }
}