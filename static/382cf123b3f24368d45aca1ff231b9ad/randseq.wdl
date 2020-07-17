version 1.0

task Randseq {
  input {
    String? option
    String run_name
  }
  command <<<
    randseq \
      ~{run_name} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    option: ""
    run_name: ""
  }
}