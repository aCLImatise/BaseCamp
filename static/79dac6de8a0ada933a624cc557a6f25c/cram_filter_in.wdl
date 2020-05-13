version 1.0

task CramFilterIn.cram {
  input {
    String? outOutCram
  }
  command <<<
    cram_filter in.cram \
      ~{outOutCram}
  >>>
}