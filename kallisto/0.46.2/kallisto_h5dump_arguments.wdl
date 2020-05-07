version 1.0

task KallistoH5dumpArguments {
  input {
    String? abundanceAbundanceH5
  }
  command <<<
    kallisto h5dump arguments \
      ~{abundanceAbundanceH5}
  >>>
}