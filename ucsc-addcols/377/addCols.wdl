version 1.0

task AddCols {
  input {
    String maximumMaximum
    File? filenameFilename
  }
  command <<<
    addCols \
      ~{filenameFilename} \
      ~{if defined(maximumMaximum) then ("- maximum " +  '"' + maximumMaximum + '"') else ""}
  >>>
}