version 1.0

task BioformatsNcbirenameseq {
  input {
    Boolean fastFastA
    String columnColumn
    String commentCommentChar
    String separatorSeparator
    String chrChr
    String unlocUnloc
    String unUnPl
    String prefixPrefix
    String prefixPrefixChr
    String prefixPrefixUnloc
    String prefixPrefixUnPl
    String suffixSuffix
    String suffixSuffixChr
    String suffixSuffixUnloc
    String suffixSuffixUnPl
    Boolean revertRevert
    Boolean noNoVersion
    Boolean noNoDescription
    String outputOutputTable
    String? commandCommand
  }
  command <<<
    bioformats ncbirenameseq \
      ~{commandCommand} \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(columnColumn) then ("--column " +  '"' + columnColumn + '"') else ""} \
      ~{if defined(commentCommentChar) then ("--comment_char " +  '"' + commentCommentChar + '"') else ""} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{if defined(chrChr) then ("--chr " +  '"' + chrChr + '"') else ""} \
      ~{if defined(unlocUnloc) then ("--unloc " +  '"' + unlocUnloc + '"') else ""} \
      ~{if defined(unUnPl) then ("--unpl " +  '"' + unUnPl + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(prefixPrefixChr) then ("--prefix_chr " +  '"' + prefixPrefixChr + '"') else ""} \
      ~{if defined(prefixPrefixUnloc) then ("--prefix_unloc " +  '"' + prefixPrefixUnloc + '"') else ""} \
      ~{if defined(prefixPrefixUnPl) then ("--prefix_unpl " +  '"' + prefixPrefixUnPl + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{if defined(suffixSuffixChr) then ("--suffix_chr " +  '"' + suffixSuffixChr + '"') else ""} \
      ~{if defined(suffixSuffixUnloc) then ("--suffix_unloc " +  '"' + suffixSuffixUnloc + '"') else ""} \
      ~{if defined(suffixSuffixUnPl) then ("--suffix_unpl " +  '"' + suffixSuffixUnPl + '"') else ""} \
      ~{true="--revert" false="" revertRevert} \
      ~{true="--no_version" false="" noNoVersion} \
      ~{true="--no_description" false="" noNoDescription} \
      ~{if defined(outputOutputTable) then ("--output_table " +  '"' + outputOutputTable + '"') else ""}
  >>>
}