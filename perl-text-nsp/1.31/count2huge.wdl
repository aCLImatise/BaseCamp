version 1.0

task Count2huge.pl {
  input {
    String splitSplit
    String? optionsOptions
    String? sourceSource
    String? destinationDestinationDir
  }
  command <<<
    count2huge.pl \
      ~{optionsOptions} \
      ~{if defined(splitSplit) then ("--split " +  '"' + splitSplit + '"') else ""} \
      ~{sourceSource} \
      ~{destinationDestinationDir}
  >>>
}