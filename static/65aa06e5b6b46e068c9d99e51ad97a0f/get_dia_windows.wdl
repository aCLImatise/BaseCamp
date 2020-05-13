version 1.0

task GetDiaWindows.pyOutputFile {
  input {
    String? timsTimsAnalysisDirectory
    String? outputOutputFile
  }
  command <<<
    get_dia_windows.py output_file \
      ~{timsTimsAnalysisDirectory} \
      ~{outputOutputFile}
  >>>
}