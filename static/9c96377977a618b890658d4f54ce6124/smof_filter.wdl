version 1.0

task SmofFilter {
  input {
    String shorterShorterThan
    String longerLongerThan
    String compositionComposition
    String? inputInput
  }
  command <<<
    smof filter \
      ~{inputInput} \
      ~{if defined(shorterShorterThan) then ("--shorter-than " +  '"' + shorterShorterThan + '"') else ""} \
      ~{if defined(longerLongerThan) then ("--longer-than " +  '"' + longerLongerThan + '"') else ""} \
      ~{if defined(compositionComposition) then ("--composition " +  '"' + compositionComposition + '"') else ""}
  >>>
}