version 1.0

task KallistoH5dumpAbundance.h5 {
  input {
    String? argumentsArguments
    String? abundanceAbundanceH5
  }
  command <<<
    kallisto h5dump abundance.h5 \
      ~{argumentsArguments} \
      ~{abundanceAbundanceH5}
  >>>
}