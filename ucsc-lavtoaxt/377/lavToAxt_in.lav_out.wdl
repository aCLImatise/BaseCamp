version 1.0

task LavToAxtIn.lavOut.axt {
  input {
    String? tTNibDir
    String? qQNibDir
    String? outOutAXt
  }
  command <<<
    lavToAxt in.lav out.axt \
      ~{tTNibDir} \
      ~{qQNibDir} \
      ~{outOutAXt}
  >>>
}