version 1.0

task _showorf {
  input {
    Boolean framesFrames
  }
  command <<<
    _showorf \
      ~{true="-frames" false="" framesFrames}
  >>>
}