version 1.0

task BigWigCorrelate {
  input {
    String? aABigwig
    String? bBBigwig
  }
  command <<<
    bigWigCorrelate \
      ~{aABigwig} \
      ~{bBBigwig}
  >>>
}