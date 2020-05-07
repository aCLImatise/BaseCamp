version 1.0

task AlignmentToolsCompareErrorType {
  input {
    String stemStem
  }
  command <<<
    AlignmentTools compare-error-type \
      ~{if defined(stemStem) then ("--stem " +  '"' + stemStem + '"') else ""}
  >>>
}