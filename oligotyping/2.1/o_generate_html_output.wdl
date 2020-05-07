version 1.0

task OGenerateHtmlOutput {
  input {
    String outputOutputDirectory
    String entropyEntropyFigure
  }
  command <<<
    o-generate-html-output \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(entropyEntropyFigure) then ("--entropy-figure " +  '"' + entropyEntropyFigure + '"') else ""}
  >>>
}