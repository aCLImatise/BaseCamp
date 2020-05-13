version 1.0

task LavToAxtQNibDir {
  input {
    String? inInLav
    String? tTNibDir
    String? qQNibDir
    String? outOutAXt
  }
  command <<<
    lavToAxt qNibDir \
      ~{inInLav} \
      ~{tTNibDir} \
      ~{qQNibDir} \
      ~{outOutAXt}
  >>>
}