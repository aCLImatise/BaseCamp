version 1.0

task Sviol {
  input {
    Boolean? old
    Boolean? print_distance_violations
    String information_dot
  }
  command <<<
    sviol \
      ~{information_dot} \
      ~{if (old) then "-old" else ""} \
      ~{if (print_distance_violations) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    old: "Use the old AMBER formatting (pre-Amber6).\\nThe 'ideal bonds' and 'ideal angles' lines have different fields\\npre-AMBER6 and AMBER6."
    print_distance_violations: "Print out distance violations in \\\"verbose\\\" mode showing\\nactual values instead of a 'graphical' display."
    information_dot: "Note:  You can fit all the info on a page in landscape by using enscript."
  }
  output {
    File out_stdout = stdout()
  }
}