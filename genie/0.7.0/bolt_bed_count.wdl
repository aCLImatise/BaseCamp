version 1.0

task BoltBedCount {
  input {
    String fileFilePath
    String? genieGenie
    String? bedBed
    String? countCount
    String? flagsFlags
  }
  command <<<
    bolt bed count \
      ~{genieGenie} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{bedBed} \
      ~{countCount} \
      ~{flagsFlags}
  >>>
}