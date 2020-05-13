version 1.0

task ArbRepairTreeXxx {
  input {
    Boolean authorAuthor
    Boolean escapeEscape
    Int blockBlockSize
    Boolean ignoreIgnoreBackups
    Boolean cC
    Boolean cC
    Boolean colorColor
    Boolean directoryDirectory
    Boolean diredDired
    Boolean fF
    Boolean classifyClassify
    Boolean fileFileType
    String formatFormat
    Boolean fullFullTime
    Boolean gG
    Boolean groupGroupDirectoriesFirst
    Boolean noNoGroup
    Boolean siSi
    Boolean dereferenceDereferenceCommandLine
    Boolean dereferenceDereferenceCommandLineSymlinkToDir
    String hideHide
    Boolean hyperlinkHyperlink
    String indicatorIndicatorStyle
    Boolean inodeInode
    String ignoreIgnore
    Boolean kibKibIBytes
    String lL
    String dereferenceDereference
    String mM
    Boolean numericNumericUidGid
    Boolean literalLiteral
    Boolean oO
    String indicatorIndicatorStyle
    Boolean hideHideControlChars
    Boolean showShowControlChars
    Boolean quoteQuoteName
    String quotingQuotingStyle
    Boolean reverseReverse
    Boolean recursiveRecursive
    Boolean sizeSize
    Boolean sS
    String sortSort
    String timeTime
    String timeTimeStyle
    Boolean tT
    String tabTabSize
    Boolean uU
    Boolean uU
    Boolean vV
    String widthWidth
    Boolean xX
    Boolean xX
    Boolean contextContext
  }
  command <<<
    arb_repair tree_xxx \
      ~{true="--author" false="" authorAuthor} \
      ~{true="--escape" false="" escapeEscape} \
      ~{if defined(blockBlockSize) then ("--block-size " +  '"' + blockBlockSize + '"') else ""} \
      ~{true="--ignore-backups" false="" ignoreIgnoreBackups} \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{true="--color" false="" colorColor} \
      ~{true="--directory" false="" directoryDirectory} \
      ~{true="--dired" false="" diredDired} \
      ~{true="-f" false="" fF} \
      ~{true="--classify" false="" classifyClassify} \
      ~{true="--file-type" false="" fileFileType} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--full-time" false="" fullFullTime} \
      ~{true="-g" false="" gG} \
      ~{true="--group-directories-first" false="" groupGroupDirectoriesFirst} \
      ~{true="--no-group" false="" noNoGroup} \
      ~{true="--si" false="" siSi} \
      ~{true="--dereference-command-line" false="" dereferenceDereferenceCommandLine} \
      ~{true="--dereference-command-line-symlink-to-dir" false="" dereferenceDereferenceCommandLineSymlinkToDir} \
      ~{if defined(hideHide) then ("--hide " +  '"' + hideHide + '"') else ""} \
      ~{true="--hyperlink" false="" hyperlinkHyperlink} \
      ~{if defined(indicatorIndicatorStyle) then ("--indicator-style " +  '"' + indicatorIndicatorStyle + '"') else ""} \
      ~{true="--inode" false="" inodeInode} \
      ~{if defined(ignoreIgnore) then ("--ignore " +  '"' + ignoreIgnore + '"') else ""} \
      ~{true="--kibibytes" false="" kibKibIBytes} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(dereferenceDereference) then ("--dereference " +  '"' + dereferenceDereference + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="--numeric-uid-gid" false="" numericNumericUidGid} \
      ~{true="--literal" false="" literalLiteral} \
      ~{true="-o" false="" oO} \
      ~{if defined(indicatorIndicatorStyle) then ("--indicator-style " +  '"' + indicatorIndicatorStyle + '"') else ""} \
      ~{true="--hide-control-chars" false="" hideHideControlChars} \
      ~{true="--show-control-chars" false="" showShowControlChars} \
      ~{true="--quote-name" false="" quoteQuoteName} \
      ~{if defined(quotingQuotingStyle) then ("--quoting-style " +  '"' + quotingQuotingStyle + '"') else ""} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--size" false="" sizeSize} \
      ~{true="-S" false="" sS} \
      ~{if defined(sortSort) then ("--sort " +  '"' + sortSort + '"') else ""} \
      ~{if defined(timeTime) then ("--time " +  '"' + timeTime + '"') else ""} \
      ~{if defined(timeTimeStyle) then ("--time-style " +  '"' + timeTimeStyle + '"') else ""} \
      ~{true="-t" false="" tT} \
      ~{if defined(tabTabSize) then ("--tabsize " +  '"' + tabTabSize + '"') else ""} \
      ~{true="-u" false="" uU} \
      ~{true="-U" false="" uU} \
      ~{true="-v" false="" vV} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{true="-x" false="" xX} \
      ~{true="-X" false="" xX} \
      ~{true="--context" false="" contextContext}
  >>>
}