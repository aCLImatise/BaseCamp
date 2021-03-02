version 1.0

task Oddcomp {
  input {
    Boolean? full_window
    String count_dot
    String words_dot
  }
  command <<<
    oddcomp \
      ~{count_dot} \
      ~{words_dot} \
      ~{if (full_window) then "-fullwindow" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    full_window: "toggle     [N] Set this option on (Y) if you want the\\nwindow size to be set to the length of the\\ncurrent protein. Otherwise, leave this\\noption unset, in which case you'll be\\nprompted for a window size to use."
    count_dot: "Thus if you want to count frequencies in a"
    words_dot: "General qualifiers:"
  }
  output {
    File out_stdout = stdout()
  }
}