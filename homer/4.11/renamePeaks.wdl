version 1.0

task RenamePeaks.pl {
  input {
    String peak_file
  }
  command <<<
    renamePeaks.pl \
      ~{peak_file}
  >>>
  parameter_meta {
    peak_file: ""
  }
}