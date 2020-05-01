version 1.0

task HugeDelete.pl {
  input {
    String removeRemove
    String uURemove
    String frequencyFrequency
    String uUFrequency
    String? optionsOptions
    String? sourceSource
    String? destinationDestination
  }
  command <<<
    huge-delete.pl \
      ~{optionsOptions} \
      ~{if defined(removeRemove) then ("--remove " +  '"' + removeRemove + '"') else ""} \
      ~{if defined(uURemove) then ("--uremove " +  '"' + uURemove + '"') else ""} \
      ~{if defined(frequencyFrequency) then ("--frequency " +  '"' + frequencyFrequency + '"') else ""} \
      ~{if defined(uUFrequency) then ("--ufrequency " +  '"' + uUFrequency + '"') else ""} \
      ~{sourceSource} \
      ~{destinationDestination}
  >>>
}