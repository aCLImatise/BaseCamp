version 1.0

task GdalTranslate {
  input {
    Boolean helpHelpGeneral
  }
  command <<<
    gdal_translate \
      ~{true="--help-general" false="" helpHelpGeneral}
  >>>
}