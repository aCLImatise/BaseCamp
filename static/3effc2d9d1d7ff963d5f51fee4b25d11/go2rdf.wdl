version 1.0

task Go2rdf {
  input {
    String? objObjYaml
    String? objObjStorable
    String? textTextHtml
    String? godGodBPreStore
    String? chChAdodbPreStore
  }
  command <<<
    go2rdf \
      ~{objObjYaml} \
      ~{objObjStorable} \
      ~{textTextHtml} \
      ~{godGodBPreStore} \
      ~{chChAdodbPreStore}
  >>>
}