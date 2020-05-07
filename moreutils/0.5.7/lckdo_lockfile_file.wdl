version 1.0

task LckdoLockfileFile {
  input {
    String magicMagicFile
    Boolean uncompressUncompress
    Boolean uncompressUncompressNoReport
    Boolean briefBrief
    Boolean checkingCheckingPrintOut
    String excludeExclude
    File filesFilesFrom
    String separatorSeparator
    Boolean mimeMime
    Boolean appleApple
    Boolean extensionExtension
    Boolean mimeMimeType
    Boolean mimeMimeEncoding
    Boolean keepKeepGoing
    Boolean listList
    Boolean dereferenceDereference
    Boolean noNoBuffer
    Boolean noNoPad
    Boolean preservePreserveDate
    Boolean parameterParameter
    Boolean rawRaw
    Boolean specialSpecialFiles
    Boolean compileCompile
    Boolean debugDebug
    File? fileFile
    String? optionOption
    File? fileFile
  }
  command <<<
    lckdo lockfile file \
      ~{fileFile} \
      ~{if defined(magicMagicFile) then ("--magic-file " +  '"' + magicMagicFile + '"') else ""} \
      ~{true="--uncompress" false="" uncompressUncompress} \
      ~{true="--uncompress-noreport" false="" uncompressUncompressNoReport} \
      ~{true="--brief" false="" briefBrief} \
      ~{true="--checking-printout" false="" checkingCheckingPrintOut} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(filesFilesFrom) then ("--files-from " +  '"' + filesFilesFrom + '"') else ""} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{true="--mime" false="" mimeMime} \
      ~{true="--apple" false="" appleApple} \
      ~{true="--extension" false="" extensionExtension} \
      ~{true="--mime-type" false="" mimeMimeType} \
      ~{true="--mime-encoding" false="" mimeMimeEncoding} \
      ~{true="--keep-going" false="" keepKeepGoing} \
      ~{true="--list" false="" listList} \
      ~{true="--dereference" false="" dereferenceDereference} \
      ~{true="--no-buffer" false="" noNoBuffer} \
      ~{true="--no-pad" false="" noNoPad} \
      ~{true="--preserve-date" false="" preservePreserveDate} \
      ~{true="--parameter" false="" parameterParameter} \
      ~{true="--raw" false="" rawRaw} \
      ~{true="--special-files" false="" specialSpecialFiles} \
      ~{true="--compile" false="" compileCompile} \
      ~{true="--debug" false="" debugDebug} \
      ~{optionOption} \
      ~{fileFile}
  >>>
}