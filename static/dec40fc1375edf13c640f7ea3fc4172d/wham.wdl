version 1.0

task Wham {
  input {
    String? find_bug_open
    String? the
  }
  command <<<
    wham \
      ~{if defined(find_bug_open) then ("-If " +  '"' + find_bug_open + '"') else ""} \
      ~{if defined(the) then ("-The " +  '"' + the + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    find_bug_open: "find a bug, please open a report on github!"
    the: ", and -p, control the sensitivity and specificity"
  }
  output {
    File out_stdout = stdout()
  }
}