version 1.0

task CoordinateTranslateAlignment coordinate file {
  input {
    String? xXMfaAlignment
    String? alignmentAlignmentCoordinateFile
  }
  command <<<
    coordinateTranslate alignment coordinate file \
      ~{xXMfaAlignment} \
      ~{alignmentAlignmentCoordinateFile}
  >>>
}