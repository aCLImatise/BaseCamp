version 1.0

task Csplit {
  input {
    String suffixSuffixFormat
    String prefixPrefix
    Boolean keepKeepFiles
    Boolean suppressSuppressMatched
    String digitsDigits
    String silentSilent
    String elideElideEmptyFiles
  }
  command <<<
    csplit \
      ~{if defined(suffixSuffixFormat) then ("--suffix-format " +  '"' + suffixSuffixFormat + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--keep-files" false="" keepKeepFiles} \
      ~{true="--suppress-matched" false="" suppressSuppressMatched} \
      ~{if defined(digitsDigits) then ("--digits " +  '"' + digitsDigits + '"') else ""} \
      ~{if defined(silentSilent) then ("--silent " +  '"' + silentSilent + '"') else ""} \
      ~{if defined(elideElideEmptyFiles) then ("--elide-empty-files " +  '"' + elideElideEmptyFiles + '"') else ""}
  >>>
}