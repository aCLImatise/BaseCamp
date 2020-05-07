version 1.0

task Du {
  input {
    Boolean allAll
    Boolean apparentApparentSize
    Int blockBlockSize
    Boolean bytesBytes
    Boolean totalTotal
    Boolean dereferenceDereferenceArgs
    String maxMaxDepth
    String filesFiles0From
    Boolean hH
    Boolean inodesInodes
    Boolean kK
    Boolean dereferenceDereference
    Boolean countCountLinks
    Boolean mM
    Boolean noNoDereference
    Boolean separateSeparateDirs
    Boolean siSi
    Boolean summarizeSummarize
    Int thresholdThreshold
    Boolean timeTime
    String timeTime
    String timeTimeStyle
    File excludeExcludeFrom
    String excludeExclude
    Boolean oneOneFileSystem
  }
  command <<<
    du \
      ~{true="--all" false="" allAll} \
      ~{true="--apparent-size" false="" apparentApparentSize} \
      ~{if defined(blockBlockSize) then ("--block-size " +  '"' + blockBlockSize + '"') else ""} \
      ~{true="--bytes" false="" bytesBytes} \
      ~{true="--total" false="" totalTotal} \
      ~{true="--dereference-args" false="" dereferenceDereferenceArgs} \
      ~{if defined(maxMaxDepth) then ("--max-depth " +  '"' + maxMaxDepth + '"') else ""} \
      ~{if defined(filesFiles0From) then ("--files0-from " +  '"' + filesFiles0From + '"') else ""} \
      ~{true="-H" false="" hH} \
      ~{true="--inodes" false="" inodesInodes} \
      ~{true="-k" false="" kK} \
      ~{true="--dereference" false="" dereferenceDereference} \
      ~{true="--count-links" false="" countCountLinks} \
      ~{true="-m" false="" mM} \
      ~{true="--no-dereference" false="" noNoDereference} \
      ~{true="--separate-dirs" false="" separateSeparateDirs} \
      ~{true="--si" false="" siSi} \
      ~{true="--summarize" false="" summarizeSummarize} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{true="--time" false="" timeTime} \
      ~{if defined(timeTime) then ("--time " +  '"' + timeTime + '"') else ""} \
      ~{if defined(timeTimeStyle) then ("--time-style " +  '"' + timeTimeStyle + '"') else ""} \
      ~{if defined(excludeExcludeFrom) then ("--exclude-from " +  '"' + excludeExcludeFrom + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{true="--one-file-system" false="" oneOneFileSystem}
  >>>
}