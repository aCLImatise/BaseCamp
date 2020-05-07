version 1.0

task HugeSort.pl {
  input {
    Boolean keepKeep
    String? optionsOptions
    String? sourceSource
  }
  command <<<
    huge-sort.pl \
      ~{optionsOptions} \
      ~{true="--keep" false="" keepKeep} \
      ~{sourceSource}
  >>>
}