version 1.0

task CreateMetaplots.bashRibo.bamName {
  input {
    String? bedBedFile
    String? nameName
  }
  command <<<
    create_metaplots.bash ribo.bam name \
      ~{bedBedFile} \
      ~{nameName}
  >>>
}