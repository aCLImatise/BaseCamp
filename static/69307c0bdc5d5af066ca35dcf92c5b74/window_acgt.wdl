version 1.0

task WindowAcgt {
  input {
    String window_start
  }
  command <<<
    window-acgt \
      ~{window_start}
  >>>
  parameter_meta {
    window_start: "window-len  A's C's G's T's #other %GC"
  }
}