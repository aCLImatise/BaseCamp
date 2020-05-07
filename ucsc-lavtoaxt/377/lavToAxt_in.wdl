version 1.0

task LavToAxtIn.lavQNibDir {
  input {
    String? tTNibDir
    String? qQNibDir
    String? outOutAXt
  }
  command <<<
    lavToAxt in.lav qNibDir \
      ~{tTNibDir} \
      ~{qQNibDir} \
      ~{outOutAXt}
  >>>
}