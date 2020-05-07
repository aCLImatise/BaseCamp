version 1.0

task CoordinateTranslateXMFA alignment {
  input {
    String? alignmentAlignmentCoordinateFile
  }
  command <<<
    coordinateTranslate XMFA alignment \
      ~{alignmentAlignmentCoordinateFile}
  >>>
}