version 1.0

task Grep {
  input {
    Boolean extendedExtendedRegexp
    Boolean fixedFixedStrings
    Boolean basicBasicRegexp
    Boolean perlPerlRegexp
    String regexpRegexp
    File fileFile
    Boolean ignoreIgnoreCase
    Boolean noNoIgnoreCase
    Boolean wordWordRegexp
    Boolean lineLineRegexp
    Boolean nullNullData
    Boolean noNoMessages
    Boolean invertInvertMatch
    String maxMaxCount
    Boolean byteByteOffset
    Boolean lineLineNumber
    Boolean lineLineBuffered
    Boolean withWithFilename
    String labelLabel
    Boolean onlyOnlyMatching
    Boolean silentSilent
    String binaryBinaryFiles
    Boolean textText
    Boolean iI
    String directoriesDirectories
    String devicesDevices
    Boolean recursiveRecursive
    Boolean dereferenceDereferenceRecursive
    String includeInclude
    String excludeExclude
    File excludeExcludeFrom
    String excludeExcludeDir
    Boolean filesFilesWithoutMatch
    Boolean filesFilesWithMatches
    Boolean countCount
    Boolean initialInitialTab
    Boolean nullNull
    String beforeBeforeContext
    String afterAfterContext
    String contextContext
    Boolean numNum
    Boolean colorColor
    Boolean colourColour
    Boolean binaryBinary
  }
  command <<<
    grep \
      ~{true="--extended-regexp" false="" extendedExtendedRegexp} \
      ~{true="--fixed-strings" false="" fixedFixedStrings} \
      ~{true="--basic-regexp" false="" basicBasicRegexp} \
      ~{true="--perl-regexp" false="" perlPerlRegexp} \
      ~{if defined(regexpRegexp) then ("--regexp " +  '"' + regexpRegexp + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{true="--ignore-case" false="" ignoreIgnoreCase} \
      ~{true="--no-ignore-case" false="" noNoIgnoreCase} \
      ~{true="--word-regexp" false="" wordWordRegexp} \
      ~{true="--line-regexp" false="" lineLineRegexp} \
      ~{true="--null-data" false="" nullNullData} \
      ~{true="--no-messages" false="" noNoMessages} \
      ~{true="--invert-match" false="" invertInvertMatch} \
      ~{if defined(maxMaxCount) then ("--max-count " +  '"' + maxMaxCount + '"') else ""} \
      ~{true="--byte-offset" false="" byteByteOffset} \
      ~{true="--line-number" false="" lineLineNumber} \
      ~{true="--line-buffered" false="" lineLineBuffered} \
      ~{true="--with-filename" false="" withWithFilename} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{true="--only-matching" false="" onlyOnlyMatching} \
      ~{true="--silent" false="" silentSilent} \
      ~{if defined(binaryBinaryFiles) then ("--binary-files " +  '"' + binaryBinaryFiles + '"') else ""} \
      ~{true="--text" false="" textText} \
      ~{true="-I" false="" iI} \
      ~{if defined(directoriesDirectories) then ("--directories " +  '"' + directoriesDirectories + '"') else ""} \
      ~{if defined(devicesDevices) then ("--devices " +  '"' + devicesDevices + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--dereference-recursive" false="" dereferenceDereferenceRecursive} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(excludeExcludeFrom) then ("--exclude-from " +  '"' + excludeExcludeFrom + '"') else ""} \
      ~{if defined(excludeExcludeDir) then ("--exclude-dir " +  '"' + excludeExcludeDir + '"') else ""} \
      ~{true="--files-without-match" false="" filesFilesWithoutMatch} \
      ~{true="--files-with-matches" false="" filesFilesWithMatches} \
      ~{true="--count" false="" countCount} \
      ~{true="--initial-tab" false="" initialInitialTab} \
      ~{true="--null" false="" nullNull} \
      ~{if defined(beforeBeforeContext) then ("--before-context " +  '"' + beforeBeforeContext + '"') else ""} \
      ~{if defined(afterAfterContext) then ("--after-context " +  '"' + afterAfterContext + '"') else ""} \
      ~{if defined(contextContext) then ("--context " +  '"' + contextContext + '"') else ""} \
      ~{true="-NUM" false="" numNum} \
      ~{true="--color" false="" colorColor} \
      ~{true="--colour" false="" colourColour} \
      ~{true="--binary" false="" binaryBinary}
  >>>
}