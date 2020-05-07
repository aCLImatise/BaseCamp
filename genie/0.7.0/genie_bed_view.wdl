version 1.0

task GenieBedView {
  input {
    String fileFilePath
    String? flagsFlags
  }
  command <<<
    genie bed view \
      ~{flagsFlags} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""}
  >>>
}