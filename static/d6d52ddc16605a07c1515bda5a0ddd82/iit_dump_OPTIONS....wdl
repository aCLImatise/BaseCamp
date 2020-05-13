version 1.0

task IitDumpOPTIONS... {
  input {
    String? iIItFile
  }
  command <<<
    iit_dump OPTIONS... \
      ~{iIItFile}
  >>>
}