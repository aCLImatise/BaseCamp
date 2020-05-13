version 1.0

task CramFilterOut.cram {
  input {
    String? inInCram
    String? outOutCram
  }
  command <<<
    cram_filter out.cram \
      ~{inInCram} \
      ~{outOutCram}
  >>>
}