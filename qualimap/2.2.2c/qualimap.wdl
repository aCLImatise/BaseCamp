version 1.0

task Qualimap {
  input {
    Boolean javaJavaMemSize
  }
  command <<<
    qualimap \
      ~{true="--java-mem-size" false="" javaJavaMemSize}
  >>>
}