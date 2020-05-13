version 1.0

task MapLearnStatic {
  input {
    String? mapMapLearn
    String? mapMapXmlFile
  }
  command <<<
    map_learn_static \
      ~{mapMapLearn} \
      ~{mapMapXmlFile}
  >>>
}