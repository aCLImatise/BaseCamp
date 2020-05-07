version 1.0

task HugeSplit.pl {
  input {
    String splitSplit
    String? optionsOptions
    String? sourceSource
  }
  command <<<
    huge-split.pl \
      ~{optionsOptions} \
      ~{if defined(splitSplit) then ("--split " +  '"' + splitSplit + '"') else ""} \
      ~{sourceSource}
  >>>
}