version 1.0

task DiriSampler {
  input {
    File? filesFiles
    String? parametersParameters
  }
  command <<<
    diri_sampler \
      ~{filesFiles} \
      ~{parametersParameters}
  >>>
}