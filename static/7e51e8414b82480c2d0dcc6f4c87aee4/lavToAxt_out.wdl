version 1.0

task LavToAxtOut.axt {
  input {
    String? inInLav
    String? tTNibDir
    String? qQNibDir
    String? outOutAXt
  }
  command <<<
    lavToAxt out.axt \
      ~{inInLav} \
      ~{tTNibDir} \
      ~{qQNibDir} \
      ~{outOutAXt}
  >>>
}