version 1.0

task SamtoolsGlfview {
  input {
    String? glfGlfView
    String? inInGlf
  }
  command <<<
    samtools glfview \
      ~{glfGlfView} \
      ~{inInGlf}
  >>>
}