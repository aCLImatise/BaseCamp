version 1.0

task ChooseLines {
  input {
    Int? number_choose_default
    String in_file
  }
  command <<<
    chooseLines \
      ~{in_file} \
      ~{if defined(number_choose_default) then ("-k " +  '"' + number_choose_default + '"') else ""}
  >>>
  parameter_meta {
    number_choose_default: "Number of lines to choose (default is all lines)."
    in_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}