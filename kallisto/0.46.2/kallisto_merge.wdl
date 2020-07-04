version 1.0

task KallistoMerge {
  input {
    String? arguments
    String ouput_directories
  }
  command <<<
    kallisto merge \
      ~{arguments} \
      ~{ouput_directories}
  >>>
  parameter_meta {
    arguments: ""
    ouput_directories: ""
  }
}