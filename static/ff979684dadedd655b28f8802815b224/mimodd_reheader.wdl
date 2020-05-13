version 1.0

task MimoddReheader {
  input {
    String? templateTemplate
    String? inputInputFile
  }
  command <<<
    mimodd reheader \
      ~{templateTemplate} \
      ~{inputInputFile}
  >>>
}