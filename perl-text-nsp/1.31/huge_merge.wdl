version 1.0

task HugeMerge.pl {
  input {
    Boolean keepKeep
    String? optionsOptions
    String? sourceSourceDir
  }
  command <<<
    huge-merge.pl \
      ~{optionsOptions} \
      ~{true="--keep" false="" keepKeep} \
      ~{sourceSourceDir}
  >>>
}