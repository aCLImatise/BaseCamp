version 1.0

task Windowacgt {
  input {
    Boolean? percentoutput_percentages_counts
    String window_start
  }
  command <<<
    window_acgt \
      ~{window_start} \
      ~{if (percentoutput_percentages_counts) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    percentoutput_percentages_counts: "or  --percent\\nOutput percentages instead of counts\\n"
    window_start: "window-len  A's C's G's T's #other %GC"
  }
  output {
    File out_stdout = stdout()
  }
}