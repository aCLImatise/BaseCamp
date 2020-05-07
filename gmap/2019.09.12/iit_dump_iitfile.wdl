version 1.0

task IitDumpIitfile {
  input {
    String? optionsOptions
    String? iIItFile
  }
  command <<<
    iit_dump iitfile \
      ~{optionsOptions} \
      ~{iIItFile}
  >>>
}