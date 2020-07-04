version 1.0

task DepVersion {
  input {
    String platform
    String features
  }
  command <<<
    dep version \
      ~{platform} \
      ~{features}
  >>>
  parameter_meta {
    platform: ": linux/amd64"
    features: ": ImportDuringSolve=false"
  }
}