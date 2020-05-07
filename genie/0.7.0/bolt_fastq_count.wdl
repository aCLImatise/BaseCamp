version 1.0

task BoltFastqCount {
  input {
    String fileFilePath
    String? genieGenie
    String? fastFastQ
    String? countCount
    String? flagsFlags
  }
  command <<<
    bolt fastq count \
      ~{genieGenie} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{fastFastQ} \
      ~{countCount} \
      ~{flagsFlags}
  >>>
}