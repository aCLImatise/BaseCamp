version 1.0

task IuTrimFastqFILEPATH {
  input {
    Int trimTrimFrom
    Int trimTrimTo
    File? fileFilePath
    File? fileFilePath
  }
  command <<<
    iu-trim-fastq FILE_PATH \
      ~{fileFilePath} \
      ~{if defined(trimTrimFrom) then ("--trim-from " +  '"' + trimTrimFrom + '"') else ""} \
      ~{if defined(trimTrimTo) then ("--trim-to " +  '"' + trimTrimTo + '"') else ""} \
      ~{fileFilePath}
  >>>
}