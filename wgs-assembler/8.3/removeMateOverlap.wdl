version 1.0

task RemoveMateOverlap {
  input {
    String? optsOpts
  }
  command <<<
    removeMateOverlap \
      ~{optsOpts}
  >>>
}