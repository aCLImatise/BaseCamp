version 1.0

task ChooseLines {
  input {
    String? number_lines_choose
    String in_file
  }
  command <<<
    chooseLines \
      ~{in_file} \
      ~{if defined(number_lines_choose) then ("-k " +  '"' + number_lines_choose + '"') else ""}
  >>>
  parameter_meta {
    number_lines_choose: "Number of lines to choose (default is all lines)."
    in_file: ""
  }
}