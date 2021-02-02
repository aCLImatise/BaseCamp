version 1.0

task Windowacgt {
  input {
    Boolean? _percentoutput_percentages
    String window_start
  }
  command <<<
    window_acgt \
      ~{window_start} \
      ~{if (_percentoutput_percentages) then "-p" else ""}
  >>>
  parameter_meta {
    _percentoutput_percentages: "or  --percent\\nOutput percentages instead of counts\\n"
    window_start: "window-len  A's C's G's T's #other %GC"
  }
  output {
    File out_stdout = stdout()
  }
}