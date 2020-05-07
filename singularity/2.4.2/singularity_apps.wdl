version 1.0

task SingularityApps {
  input {
    String? singularitySingularityAppname
    String? singularitySingularityAppRoot
    String? singularitySingularityAppMeta
    String? singularitySingularityAppdata
    String? singularitySingularityAppInput
    String? singularitySingularityAppOutput
  }
  command <<<
    singularity apps \
      ~{singularitySingularityAppname} \
      ~{singularitySingularityAppRoot} \
      ~{singularitySingularityAppMeta} \
      ~{singularitySingularityAppdata} \
      ~{singularitySingularityAppInput} \
      ~{singularitySingularityAppOutput}
  >>>
}