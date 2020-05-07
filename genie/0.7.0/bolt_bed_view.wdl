version 1.0

task BoltBedView {
  input {
    String fileFilePath
    String? genieGenie
    String? bedBed
    String? viewView
    String? flagsFlags
  }
  command <<<
    bolt bed view \
      ~{genieGenie} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{bedBed} \
      ~{viewView} \
      ~{flagsFlags}
  >>>
}