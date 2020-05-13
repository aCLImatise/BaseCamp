version 1.0

task GenieFastqCount {
  input {
    String fileFilePath
    String? flagsFlags
  }
  command <<<
    genie fastq count \
      ~{flagsFlags} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""}
  >>>
}