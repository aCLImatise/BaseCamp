version 1.0

task CCAT {
  input {
    String? libraryLibrary1tagFilename
    String? libraryLibrary2tagFilename
    String? chromosomeChromosomeLengthFilename
    String? configConfigFileName
    String? projectProjectName
  }
  command <<<
    CCAT \
      ~{libraryLibrary1tagFilename} \
      ~{libraryLibrary2tagFilename} \
      ~{chromosomeChromosomeLengthFilename} \
      ~{configConfigFileName} \
      ~{projectProjectName}
  >>>
}