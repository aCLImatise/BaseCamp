version 1.0

task LavToAxtIn.lavTNibDirOut.axt {
  input {
    String? qQNibDir
    String? outOutAXt
  }
  command <<<
    lavToAxt in.lav tNibDir out.axt \
      ~{qQNibDir} \
      ~{outOutAXt}
  >>>
}