version 1.0

task CreateMetaplots.bashName {
  input {
    String? riRiBobAm
    String? bedBedFile
    String? nameName
  }
  command <<<
    create_metaplots.bash name \
      ~{riRiBobAm} \
      ~{bedBedFile} \
      ~{nameName}
  >>>
}