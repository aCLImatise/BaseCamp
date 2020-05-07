version 1.0

task BioconvertInit {
  input {
    String inputInputExtension
    String outputOutputExtension
  }
  command <<<
    bioconvert_init \
      ~{if defined(inputInputExtension) then ("--input-extension " +  '"' + inputInputExtension + '"') else ""} \
      ~{if defined(outputOutputExtension) then ("--output-extension " +  '"' + outputOutputExtension + '"') else ""}
  >>>
}