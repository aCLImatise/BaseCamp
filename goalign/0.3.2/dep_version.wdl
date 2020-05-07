version 1.0

task DepVersion {
  input {
    String? platformPlatform
    String? featuresFeatures
  }
  command <<<
    dep version \
      ~{platformPlatform} \
      ~{featuresFeatures}
  >>>
}