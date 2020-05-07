version 1.0

task GenieBedCount {
  input {
    String fileFilePath
    String? flagsFlags
  }
  command <<<
    genie bed count \
      ~{flagsFlags} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""}
  >>>
}