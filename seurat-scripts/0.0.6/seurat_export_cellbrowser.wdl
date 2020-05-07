version 1.0

task SeuratExportCellbrowser.R {
  input {
    String inputInputObjectFile
    String inputInputFormat
    String outputOutputDirectory
    String studyStudyName
    String markersMarkersFile
  }
  command <<<
    seurat-export-cellbrowser.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(studyStudyName) then ("--study-name " +  '"' + studyStudyName + '"') else ""} \
      ~{if defined(markersMarkersFile) then ("--markers-file " +  '"' + markersMarkersFile + '"') else ""}
  >>>
}