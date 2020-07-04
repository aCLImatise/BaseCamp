version 1.0

task HalRenameSequences {
  input {
    String hal_file
    String genome
    String rename_file
  }
  command <<<
    halRenameSequences \
      ~{hal_file} \
      ~{genome} \
      ~{rename_file}
  >>>
  parameter_meta {
    hal_file: ""
    genome: ""
    rename_file: ""
  }
}