version 1.0

task LavToAxtTNibDir {
  input {
    String? inInLav
    String? tTNibDir
    String? qQNibDir
    String? outOutAXt
  }
  command <<<
    lavToAxt tNibDir \
      ~{inInLav} \
      ~{tTNibDir} \
      ~{qQNibDir} \
      ~{outOutAXt}
  >>>
}